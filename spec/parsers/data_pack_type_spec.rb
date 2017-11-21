require 'spec_helper'
require 'pohoda/data_pack_type'

RSpec.describe Pohoda::DataPackType do
  let(:xml) do
    raw = File.open "./spec/fixtures/two_invoices.xml"
    xml = Nokogiri::XML(raw).remove_namespaces!
    xml.at_xpath('dataPack')
  end
  let(:data_pack) { Pohoda::DataPackType.new(xml) }

  describe '#data_pack_items' do
    it 'parsed data pack items' do
      items =
        data_pack
        .data_pack_items

      numbers =
        items
        .map(&:invoice)
        .map(&:invoice_header)
        .map(&:number)
        .map(&:number_requested)

      expect(numbers).to eq ["2016001938", "2016001939"]
    end
  end

  describe '#[]' do
    it "returns data pack's attribute under given name" do
      expect(data_pack['version']).to eq '2.0'
    end
  end

  describe '#to_h' do
    it 'returns data pack as a hash' do
      item1 = { invoice: { invoice_header: { invoice_type: "issuedInvoice",
                                             number: { number_requested: "2016001938"} } } }
      item2 = { invoice: { invoice_header: { invoice_type: "issuedInvoice",
                                             number: { number_requested: "2016001939" } } } }

      expected_hash = { data_pack_items: [item1, item2] }

      expect(data_pack.to_h).to eq expected_hash
    end
  end
end
