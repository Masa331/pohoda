require 'spec_helper'

RSpec.describe Pohoda::Builder::HomeCurrency2 do
  describe '#to_xml' do
    context 'blank home_currency2' do
      let(:builder) { Pohoda::Builder::HomeCurrency2.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/home_currency2/blank_home_currency2.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'home_currency2' do
      let(:attributes) do
        { price_none: 33 }
      end

      let(:builder) do
        Pohoda::Builder::HomeCurrency2.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/home_currency2/home_currency2.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
