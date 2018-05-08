require 'spec_helper'

RSpec.describe Pohoda::Builder::ExtIdType do
  describe '#to_xml' do
    context 'blank external id' do
      let(:builder) { Pohoda::Builder::ExtIdType.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/ext_id_type/blank_ext_id_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'external id' do
      let(:attributes) do
        { ids: 'string identifier' }
      end

      let(:builder) do
        Pohoda::Builder::ExtIdType.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/ext_id_type/ext_id_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
