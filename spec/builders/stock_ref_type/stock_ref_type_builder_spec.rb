require 'spec_helper'

RSpec.describe Pohoda::Builder::StockRefType do
  describe '#to_xml' do
    context 'blank stock_ref_type' do
      let(:builder) { Pohoda::Builder::StockRefType.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/stock_ref_type/blank_stock_ref_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'stock_ref_type' do
      let(:attributes) do
        { id: 1 }
      end

      let(:builder) do
        Pohoda::Builder::StockRefType.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/stock_ref_type/stock_ref_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
