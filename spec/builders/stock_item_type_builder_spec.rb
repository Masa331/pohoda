require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::StockItemType do
  describe '#to_xml' do
    context 'stock_item_type' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::StockItemType.new('stockItem', { serial_number: '1' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <stockItem>
              <typ:serialNumber>1</typ:serialNumber>
            </stockItem>
          XML
        )
      end
    end
  end
end
