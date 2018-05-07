require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::TypeCurrencyForeign do
  describe '#to_xml' do
    context 'type_currency_foreign' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::TypeCurrencyForeign.new('foreignCurrency', { amount: '33' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <foreignCurrency>
              <typ:amount>33</typ:amount>
            </foreignCurrency>
          XML
        )
      end
    end
  end
end
