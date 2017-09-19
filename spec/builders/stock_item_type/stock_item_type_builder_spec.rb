require 'spec_helper'

RSpec.describe Pohoda::Builder::StockItemType do
  describe '#to_xml' do
    context 'blank stock_item_type' do
      let(:builder) { Pohoda::Builder::StockItemType.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/stock_item_type/blank_stock_item_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'stock_item_type' do
      let(:attributes) do
        { serial_number: 1 }
      end

      let(:builder) do
        Pohoda::Builder::StockItemType.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/stock_item_type/stock_item_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
