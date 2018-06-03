require 'spec_helper'

RSpec.describe Pohoda::Builders::Dat::DataPackType do
  context 'data pack with items' do
    it 'retuns xml string' do
      pack_attrs = item_pack = ParserCore::HashWithAttributes.new(
        { invoice: { invoice_header: { invoice_type: 'issuedInvoice' } } },
        { 'version' => '2.0', 'id' => '1' }
      )

      builder = Pohoda::Builders::Dat::DataPackType.new 'dataPack', { data_pack_item: [item_pack] }

      expect(builder.to_xml.gsub(/\s+/, '')).to eq(
        <<~XML
          <?xml version="1.0"?>
          <dataPack>
            <dat:dataPackItem version="2.0" id="1">
              <inv:invoice>
                <inv:invoiceHeader>
                  <inv:invoiceType>issuedInvoice</inv:invoiceType>
                </inv:invoiceHeader>
              </inv:invoice>
            </dat:dataPackItem>
          </dataPack>
        XML
        .gsub(/\s+/, ''))
    end
  end

  context 'data pack with namespaces' do
    it 'retuns xml string' do
      builder = Pohoda::Builders::Dat::DataPackType.new 'dataPack', {}, namespaces: { dat: 'http://namespace.com' }

      expect(builder.to_xml.gsub(/\s+/, '')).to eq(
        <<~XML
          <?xml version="1.0"?>
          <dataPack xmlns:dat="http://namespace.com"/>
        XML
        .gsub(/\s+/, ''))
    end
  end
end
