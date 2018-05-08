require 'spec_helper'

RSpec.describe Pohoda::Builder::TypeCurrencyForeignItem do
  describe '#to_xml' do
    context 'blank type_currency_foreign_item' do
      let(:builder) { Pohoda::Builder::TypeCurrencyForeignItem.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/type_currency_foreign_item/blank_type_currency_foreign_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'type_currency_foreign_item' do
      let(:attributes) do
        { price: 44 }
      end

      let(:builder) do
        Pohoda::Builder::TypeCurrencyForeignItem.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/type_currency_foreign_item/type_currency_foreign_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
