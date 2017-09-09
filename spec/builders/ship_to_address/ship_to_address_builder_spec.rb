require 'spec_helper'

RSpec.describe Pohoda::Builder::ShipToAddress do
  describe '#to_xml' do
    context 'blank external id' do
      let(:builder) { Pohoda::Builder::ShipToAddress.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/ship_to_address/blank_ship_to_address.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'ship to address' do
      let(:attributes) do
        { id: 1,
          country: { ids: 'CZ' }
        }
      end

      let(:builder) do
        Pohoda::Builder::ShipToAddress.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/ship_to_address/ship_to_address.xml')

        expect(builder.to_xml.gsub(/\s+/, '')).to eq expected_output.gsub(/\s+/, '')
      end
    end
  end
end
