require 'spec_helper'
# require 'pohoda/number'

RSpec.describe Pohoda do
  let(:xml) do
    raw = File.read "./spec/fixtures/complete_invoice.xml"
    xml = Pohoda.parse(raw)
  end

  # let(:number) { xml.data_pack_items.first.invoice.invoice_header.number }
  let(:number) { xml.data_pack_item.first.invoice.invoice_header.number }

  describe '#to_h' do
    it 'returns proper hash' do
      expected_hash = {
        id: '1',
        ids: 'something',
        number_requested: '2016001938'
      }

      expect(number.to_h_with_attrs).to eq expected_hash
    end
  end
end
