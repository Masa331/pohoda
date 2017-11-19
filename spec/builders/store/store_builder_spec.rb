require 'spec_helper'
require 'pohoda/builder/store'

RSpec.describe Pohoda::Builder::Store do
  describe '#to_xml' do
    context 'blank store' do
      let(:builder) { Pohoda::Builder::Store.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/store/blank_store.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'store' do
      let(:attributes) do
        { id: 1 }
      end

      let(:builder) do
        Pohoda::Builder::Store.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/store/store.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
