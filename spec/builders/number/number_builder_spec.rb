require 'spec_helper'

RSpec.describe Pohoda::Builder::Number do
  describe '#to_xml' do
    context 'blank number' do
      let(:builder) { Pohoda::Builder::Number.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/number/blank_number.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'number' do
      let(:attributes) do
        { id: 1,
          ids: 'string identifier',
          number_requested: '2017000025' }
      end

      let(:builder) do
        Pohoda::Builder::Number.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/number/number.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
