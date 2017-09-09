require 'spec_helper'

RSpec.describe Pohoda::Builder::Address do
  describe '#to_xml' do
    context 'blank address' do
      let(:builder) { Pohoda::Builder::Address.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/address/blank_address.xml')

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
        Pohoda::Builder::Address.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/address/address.xml')

        expect(builder.to_xml.gsub(/\s+/, '')).to eq expected_output.gsub(/\s+/, '')
      end
    end
  end
end
