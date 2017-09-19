require 'spec_helper'

RSpec.describe Pohoda::Builder::TypeCurrencyForeign do
  describe '#to_xml' do
    context 'blank type_currency_foreign' do
      let(:builder) { Pohoda::Builder::TypeCurrencyForeign.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/type_currency_foreign/blank_type_currency_foreign.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'type_currency_foreign' do
      let(:attributes) do
        { amount: 33 }
      end

      let(:builder) do
        Pohoda::Builder::TypeCurrencyForeign.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/type_currency_foreign/type_currency_foreign.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
