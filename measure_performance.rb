$:.unshift './lib'
require_relative 'lib/pohoda'
require 'benchmark'
require 'pstore'
require 'date'
require 'memory_profiler'
require 'stackprof'

class Profiler
  def self.call(description, &block)
    hash = `git rev-parse --short HEAD`.strip
    timestamp = DateTime.parse(`git log -1 --format=%cd`.strip).strftime('%e.%-m.%Y %H:%M')
    filename = "#{description.gsub(' ', '-')}_#{hash}"

    StackProf.run(mode: :wall, out: "./tmp/#{filename}.stackprof", interval: 200) { block.call }

    duration = Benchmark.realtime { block.call }
    memory = MemoryProfiler.report { block.call }

    result = with_captured_stdout { memory.pretty_print }
    File.open("./tmp/#{filename}.memory_profile", 'w') { |f| f.puts result }

    { hash: hash,
      timestamp: timestamp,
      description: description,
      duration: duration.to_f.round(4),
      total_allocated_memsize: to_mb(memory.total_allocated_memsize),
      total_retained_memsize: to_mb(memory.total_retained_memsize)
    }
  end

  def self.with_captured_stdout
    old_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = old_stdout
  end

  private

  def self.to_mb(b)
    (b.to_f / 1024 / 1024).round(4)
  end
end

report = Profiler.call('map 100 invoices to_h') do
  raw = File.read "./spec/fixtures/100_invoices.xml"
  data_pack = Pohoda.parse(raw)
  data_pack.to_h
end
puts "#{report[:hash]} | #{report[:description]} | #{report[:duration]} s | #{report[:total_allocated_memsize]} Mb | #{report[:total_retained_memsize]} Mb"

report = Profiler.call('map one attribute on 100 invoices') do
  raw = File.read "./spec/fixtures/100_invoices.xml"
  data_pack = Pohoda.parse(raw)

  data_pack.data_pack_items.map(&:invoice).map { |i| i.invoice_header.number.number_requested }
end
puts "#{report[:hash]} | #{report[:description]} | #{report[:duration]} s | #{report[:total_allocated_memsize]} Mb | #{report[:total_retained_memsize]} Mb"

report = Profiler.call('ox parse 2000 invoices') do
  raw = File.read "/home/masa331/2000invoices.xml"
  Ox.load(raw, mode: :hash_no_attrs)
end
puts "#{report[:hash]} | #{report[:description]} | #{report[:duration]} s | #{report[:total_allocated_memsize]} Mb | #{report[:total_retained_memsize]} Mb"

report = Profiler.call('map 2000 invoices to_h') do
  raw = File.read "/home/masa331/2000invoices.xml"
  data_pack = Pohoda.parse(raw)
  data_pack.to_h
end
puts "#{report[:hash]} | #{report[:description]} | #{report[:duration]} s | #{report[:total_allocated_memsize]} Mb | #{report[:total_retained_memsize]} Mb"
