require 'spec_helper'

RSpec.describe Pohoda::Builder::StockItem2 do
  describe '#to_xml' do
    context 'blank stock_item2' do
      let(:builder) { Pohoda::Builder::StockItem2.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/stock_item2/blank_stock_item2.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'stock_item2' do
      let(:attributes) do
        { id: 1 }
      end

      let(:builder) do
        Pohoda::Builder::StockItem2.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/stock_item2/stock_item2.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
