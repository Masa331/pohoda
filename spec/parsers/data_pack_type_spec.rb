require 'spec_helper'
require 'pohoda/data_pack_type'

RSpec.describe Pohoda::DataPackType do
  let(:xml) do
    Nokogiri::XML(File.open "./spec/fixtures/basic_invoice.xml").at_xpath('//dat:dataPack').document.remove_namespaces!.children.first
  end
  let(:data_pack) { Pohoda::DataPackType.new(xml) }

  describe '#data_pack_items' do
    it 'returns DataPackItemType' do
      expect(data_pack.data_pack_items.size).to eq 1
      expect(data_pack.data_pack_items.first).to be_a Pohoda::DataPackItemType
    end

    it 'properly parses more items' do
      xml = File.open('./spec/fixtures/two_invoices.xml')
      data_pack = Pohoda.parse(xml)

      numbers = data_pack.data_pack_items.map(&:invoice).map(&:invoice_header).map(&:number).map(&:number_requested)
      expect(numbers).to eq ["2016001938", "2016001939"]
    end
  end

  it "#['version']" do
    expect(data_pack['version']).to eq '2.0'
  end

  it "#['id']" do
    expect(data_pack['id']).to eq 'fa001'
  end

  it "#['ico']" do
    expect(data_pack['ico']).to eq '00000001'
  end

  it "#['application']" do
    expect(data_pack['application']).to eq 'StwTest'
  end

  it "#['note']" do
    expect(data_pack['note']).to eq 'Import'
  end

  describe '#to_h' do
    it '#to_h' do
      hash = data_pack.to_h

      expect(hash[:data_pack_items].first[:invoice][:invoice_header]).to include({ invoice_type: 'issuedInvoice'  })
    end
  end
end
