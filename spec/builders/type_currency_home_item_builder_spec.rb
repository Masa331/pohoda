require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::TypeCurrencyHomeItem do
  describe '#to_xml' do
    context 'type_currency_home_item' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::TypeCurrencyHomeItem.new('inv:homeCurrency', { price: '33' })

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
