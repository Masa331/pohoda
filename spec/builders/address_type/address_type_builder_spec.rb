require 'spec_helper'
require 'pohoda/builder/address_type'

RSpec.describe Pohoda::Builder::AddressType do
  describe '#to_xml' do
    context 'blank address' do
      let(:builder) { Pohoda::Builder::AddressType.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/address_type/blank_address_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'address' do
      let(:attributes) do
        { company: 'Best Company inc.',
          country: { ids: 'CZ' }
        }
      end

      let(:builder) do
        Pohoda::Builder::AddressType.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/address_type/address_type.xml')

        expect(builder.to_xml.gsub(/\s+/, '')).to eq expected_output.gsub(/\s+/, '')
      end
    end
  end
end
