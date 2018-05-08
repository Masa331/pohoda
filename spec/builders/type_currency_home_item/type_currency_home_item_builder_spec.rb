require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::TypeCurrencyHomeItem do
  describe '#to_xml' do
    context 'blank type_currency_home_item' do
      it 'retuns xml string' do
        attrs = { 'xmlns:inv' => "http://www.stormware.cz/schema/version_2/invoice.xsd", 'xmlns:typ' => "http://www.stormware.cz/schema/version_2/type.xsd" }

        data = ParserCore::HashWithAttributes.new({}, attrs)
        builder = Pohoda::Builders::Typ::TypeCurrencyHomeItem.new('inv:homeCurrency', data, { encoding: 'UTF-8' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0" encoding="UTF-8"?>
            <inv:homeCurrency xmlns:inv="http://www.stormware.cz/schema/version_2/invoice.xsd" xmlns:typ="http://www.stormware.cz/schema/version_2/type.xsd"/>
          XML
        )
      end
    end

    context 'type_currency_home_item' do
      let(:data) do
        { price: '33' }
      end

      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::TypeCurrencyHomeItem.new('inv:homeCurrency', data)
        expected_output = File.read('spec/builders/type_currency_home_item/type_currency_home_item.xml')

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <inv:homeCurrency>
              <typ:price>33</typ:price>
            </inv:homeCurrency>
          XML
        )
      end
    end
  end
end
