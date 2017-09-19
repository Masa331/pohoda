require 'spec_helper'

RSpec.describe Pohoda::Builder::TypeCurrencyHomeItem do
  describe '#to_xml' do
    context 'blank type_currency_home_item' do
      let(:builder) { Pohoda::Builder::TypeCurrencyHomeItem.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/type_currency_home_item/blank_type_currency_home_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'type_currency_home_item' do
      let(:attributes) do
        { price: 33 }
      end

      let(:builder) do
        Pohoda::Builder::TypeCurrencyHomeItem.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/type_currency_home_item/type_currency_home_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
