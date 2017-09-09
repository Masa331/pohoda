require 'spec_helper'

RSpec.describe Pohoda::Builder::StockItem do
  describe '#to_xml' do
    context 'blank stock_item' do
      let(:builder) { Pohoda::Builder::StockItem.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/stock_item/blank_stock_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'stock_item' do
      let(:attributes) do
        { serial_number: 1 }
      end

      let(:builder) do
        Pohoda::Builder::StockItem.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/stock_item/stock_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
