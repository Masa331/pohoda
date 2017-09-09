require 'spec_helper'

RSpec.describe Pohoda::Builder::ExtId do
  describe '#to_xml' do
    context 'blank external id' do
      let(:builder) { Pohoda::Builder::ExtId.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/ext_id/blank_ext_id.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'external id' do
      let(:attributes) do
        { ids: 'string identifier' }
      end

      let(:builder) do
        Pohoda::Builder::ExtId.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/ext_id/ext_id.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
