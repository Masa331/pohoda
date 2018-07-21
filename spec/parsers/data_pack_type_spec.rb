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
      item1 = { attributes: { id: '2016001938', version: '2.0' },
                invoice: { attributes: { version: '2.0' },
                           invoice_header: { attributes: {},
                                             invoice_type: 'issuedInvoice',
                                             invoice_type_attributes: {},
                                             number: { attributes: {},
                                                       number_requested: '2016001938',
                                                       number_requested_attributes: {} } } } }
      item2 = { attributes: { id: '2016001939', version: '2.0' },
                invoice: { attributes: { version: '2.0' },
                           invoice_header: { attributes: {},
                                             invoice_type: 'issuedInvoice',
                                             invoice_type_attributes: {},
                                             number: { attributes: {},
                                                       number_requested: '2016001939',
                                                       number_requested_attributes: {} } } } }

      expected_hash = { attributes: { id: 'fa001', ico: '00000001', application: 'StwTest', version: '2.0', note: 'Import',
                                      :"xmlns:dat" => 'http://www.stormware.cz/schema/version_2/data.xsd',
                                      :"xmlns:inv" => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                                      :"xmlns:typ" => 'http://www.stormware.cz/schema/version_2/type.xsd'},
                                      data_pack_item: [item1, item2] }

      expect(data_pack.to_h).to match expected_hash
    end
  end
end
