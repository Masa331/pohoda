require 'spec_helper'

RSpec.describe Pohoda::DataPackType do
  let(:xml) { Nokogiri::XML(File.open "./spec/fixtures/basic_invoice.xml").at_xpath('//dat:dataPack') }
  let(:data_pack) { Pohoda::DataPackType.new(xml) }

  it '#data_pack_items' do
    expect(data_pack.data_pack_items.size).to eq 1
    expect(data_pack.data_pack_items.first).to be_a Pohoda::DataPackItemType
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

      expect(hash[:data_pack_items].first[:invoice]).to include({ invoice_type: 'issuedInvoice' })
    end
  end
end
