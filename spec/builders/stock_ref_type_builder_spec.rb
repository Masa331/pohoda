require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::StockRefType do
  describe '#to_xml' do
    context 'stock_ref_type' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::StockRefType.new('stockItem', { id: '1' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <stockItem>
              <typ:id>1</typ:id>
            </stockItem>
          XML
        )
      end
    end
  end
end
