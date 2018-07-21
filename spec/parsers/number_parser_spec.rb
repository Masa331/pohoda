require 'spec_helper'

RSpec.describe Pohoda do
  let(:xml) do
    raw = File.read "./spec/fixtures/complete_invoice.xml"
    xml = Pohoda.parse(raw)
  end

  let(:number) { xml.data_pack_item.first.invoice.invoice_header.number }

  describe '#to_h' do
    it 'returns proper hash' do
      expected_hash = {
        attributes: {},
        id: '1',
        id_attributes: {},
        ids: 'something',
        ids_attributes: {},
        number_requested: '2016001938',
        number_requested_attributes: {}
      }

      expect(number.to_h).to eq expected_hash
    end
  end
end
