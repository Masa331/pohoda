require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::TypeCurrencyForeignItem do
  describe '#to_xml' do
    context 'type_currency_foreign_item' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::TypeCurrencyForeignItem.new('foreignCurrency', { price: '44' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <foreignCurrency>
              <typ:price>44</typ:price>
            </foreignCurrency>
          XML
        )
      end
    end
  end
end
