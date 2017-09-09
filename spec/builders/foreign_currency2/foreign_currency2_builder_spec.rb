require 'spec_helper'

RSpec.describe Pohoda::Builder::ForeignCurrency2 do
  describe '#to_xml' do
    context 'blank foreign_currency2' do
      let(:builder) { Pohoda::Builder::ForeignCurrency2.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/foreign_currency2/blank_foreign_currency2.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'foreign_currency2' do
      let(:attributes) do
        { amount: 33 }
      end

      let(:builder) do
        Pohoda::Builder::ForeignCurrency2.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/foreign_currency2/foreign_currency2.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
