require 'spec_helper'

RSpec.describe Pohoda::Builder::HomeCurrency do
  describe '#to_xml' do
    context 'blank home_currency' do
      let(:builder) { Pohoda::Builder::HomeCurrency.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/home_currency/blank_home_currency.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'home_currency' do
      let(:attributes) do
        { price: 33 }
      end

      let(:builder) do
        Pohoda::Builder::HomeCurrency.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/home_currency/home_currency.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
