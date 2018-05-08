require 'spec_helper'

RSpec.describe Pohoda::Parsers::Dat::DataPackType do
  let(:xml) { File.read "./spec/fixtures/two_invoices.xml" }
  let(:data_pack) { Pohoda.parse(xml) }

  describe '#data_pack_items' do
    it 'parsed data pack items' do
      items = data_pack.data_pack_item

      numbers =
        items
        .map(&:invoice)
        .map(&:invoice_header)
        .map(&:number)
        .map(&:number_requested)

      expect(numbers).to eq ["2016001938", "2016001939"]
    end

    context 'data pack is empty' do
      it 'returns empty array' do
        data_pack = Pohoda.parse(File.read("./spec/fixtures/empty_data_pack.xml"))
        expect(data_pack.data_pack_item).to eq []
      end
    end
  end

  describe '#to_h' do
    it 'returns data pack as a hash' do
      item1 = { invoice: { invoice_header: { invoice_type: "issuedInvoice",
                                             number: { number_requested: "2016001938"} } } }
      item2 = { invoice: { invoice_header: { invoice_type: "issuedInvoice",
                                             number: { number_requested: "2016001939" } } } }

      expected_hash = { data_pack_item: [item1, item2] }

      expect(data_pack.to_h_with_attrs).to eq expected_hash
    end
  end
end
