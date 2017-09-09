require 'spec_helper'

RSpec.describe Pohoda::Builder::Currency do
  describe '#to_xml' do
    context 'blank currency' do
      let(:builder) { Pohoda::Builder::Currency.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/currency/blank_currency.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'currency' do
      let(:attributes) do
        { id: 1 }
      end

      let(:builder) do
        Pohoda::Builder::Currency.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/currency/currency.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
