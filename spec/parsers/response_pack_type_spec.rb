require 'spec_helper'
# require 'pohoda/response_pack_type'

RSpec.describe Pohoda::Parsers::Rsp::ResponsePackType do
  let(:xml) do
    raw = File.read "./spec/fixtures/response_pack.xml"
    Pohoda.parse(raw)
  end

  let(:response_pack) { xml }

  describe '#response_pack_items' do
    it 'properly parses more items' do
      numbers = response_pack.response_pack_item.first
        .list_invoice
        .invoice.map(&:invoice_header).map(&:number).map(&:number_requested)

      expect(numbers).to eq ["4721703283", "4721703284"]
    end

    context 'response pack is empty' do
      it 'returns empty array' do
        response_pack = Pohoda.parse(File.read("./spec/fixtures/empty_response_pack.xml"))

        expect(response_pack.response_pack_item).to eq []
      end
    end
  end

  describe '#to_h' do
    it 'returns proper hash' do
      numbers = response_pack.to_h_with_attrs[:response_pack_item].first[:list_invoice][:invoice]
        .map { |invoice| invoice[:invoice_header][:number][:number_requested] }

      expect(numbers).to eq ["4721703283", "4721703284"]
    end
  end
end
