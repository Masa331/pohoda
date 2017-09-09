
require 'spec_helper'

RSpec.describe Pohoda::Builder::ForeignCurrency do
  describe '#to_xml' do
    context 'blank foreign_currency' do
      let(:builder) { Pohoda::Builder::ForeignCurrency.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/foreign_currency/blank_foreign_currency.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'foreign_currency' do
      let(:attributes) do
        { price: 44 }
      end

      let(:builder) do
        Pohoda::Builder::ForeignCurrency.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/foreign_currency/foreign_currency.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
