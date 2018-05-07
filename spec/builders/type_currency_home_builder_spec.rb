require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::TypeCurrencyHome do
  describe '#to_xml' do
    context 'type_currency_home' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::TypeCurrencyHome.new('homeCurrency', { price_none: '33' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <homeCurrency>
              <typ:priceNone>33</typ:priceNone>
            </homeCurrency>
          XML
        )
      end
    end
  end
end
