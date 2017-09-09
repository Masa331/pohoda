require 'spec_helper'

RSpec.describe Pohoda::Builder::Country do
  describe '#to_xml' do
    context 'blank country' do
      let(:builder) { Pohoda::Builder::Country.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/country/blank_country.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'country' do
      let(:attributes) do
        { id: 1 }
      end

      let(:builder) do
        Pohoda::Builder::Country.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/country/country.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
