require_relative 'lib/pohoda'
require 'benchmark'
require 'pstore'
require 'date'
require 'memory_profiler'

class Store
  def initialize
    @store = PStore.new('benchmark.store')
  end

  def read
    @store.transaction { @store[:results] || {} }
  end

  def merge_new_report(report)
    key = [report.delete(:hash), report.delete(:timestamp), report.delete(:description)].join(' - ')
    new_content = read.merge(key => report)

    @store.transaction { @store[:results] = new_content }
  end
end

class Profiler
  def self.call(description, &block)
    duration = Benchmark.realtime { block.call }
    memory = MemoryProfiler.report { block.call }

    hash = `git rev-parse --short HEAD`.strip
    timestamp = DateTime.parse(`git log -1 --format=%cd`.strip).strftime('%e.%-m.%Y %H:%M')

    { hash: hash,
      timestamp: timestamp,
      description: description,
      duration: (duration.to_f / 60).round(4),
      total_allocated_memsize: (memory.total_allocated_memsize.to_f / 1024 / 1024).round(4),
      total_retained_memsize: (memory.total_retained_memsize.to_f / 1024 / 1024).round(4)
    }
  end
end




store = Store.new

report = Profiler.call('map 100 invoices to_h') do
  raw = File.open "./spec/fixtures/100_invoices.xml"
  data_pack = Pohoda.parse(raw)
  data_pack.to_h
end
store.merge_new_report(report)

report = Profiler.call('map one attribute on 100 invoices') do
  raw = File.open "./spec/fixtures/100_invoices.xml"
  data_pack = Pohoda.parse(raw)

  data_pack.data_pack_items.map(&:invoice).map { |i| i.invoice_header.number.number_requested }
end
store.merge_new_report(report)

sorted = store.read.to_a.sort do |x, y|
  x <=> y
end

sorted.each do |a|
  row = [ a[0],
          "#{a[1][:duration]} s",
          "#{a[1][:total_allocated_memsize]} Mb",
          "#{a[1][:total_retained_memsize]} Mb" ]

  puts row.join(' | ')
end
