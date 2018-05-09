require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::TypeRound do
  describe '#to_xml' do
    context 'round' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::TypeRound.new('round', { price_round: '1' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <round>
              <typ:priceRound>1</typ:priceRound>
            </round>
          XML
        )
      end
    end
  end
end
