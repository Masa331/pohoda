require 'spec_helper'

RSpec.describe Pohoda::Builder::TypeCurrencyHome do
  describe '#to_xml' do
    context 'blank type_currency_home' do
      let(:builder) { Pohoda::Builder::TypeCurrencyHome.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/type_currency_home/blank_type_currency_home.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'type_currency_home' do
      let(:attributes) do
        { price_none: 33 }
      end

      let(:builder) do
        Pohoda::Builder::TypeCurrencyHome.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/type_currency_home/type_currency_home.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
