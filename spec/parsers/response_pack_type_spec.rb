require 'spec_helper'
require 'pohoda/response_pack_type'

RSpec.describe Pohoda::ResponsePackType do
  let(:xml) do
    raw = File.read "./spec/fixtures/response_pack.xml"
    Pohoda.parse(raw)
  end

  let(:response_pack) { xml }

  describe '#response_pack_items' do
    it 'properly parses more items' do
      numbers = response_pack.response_pack_item
        .list_invoice
        .invoices.map(&:invoice_header).map(&:number).map(&:number_requested)

      expect(numbers).to eq ["4721703283", "4721703284"]
    end
  end

  describe '#to_h' do
    it 'returns proper hash' do
      numbers = response_pack.to_h[:response_pack_item][:list_invoice][:invoices]
        .map { |invoice| invoice[:invoice_header][:number][:number_requested] }

      expect(numbers).to eq ["4721703283", "4721703284"]
    end
  end
end
