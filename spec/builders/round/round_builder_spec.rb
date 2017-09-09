require 'spec_helper'

RSpec.describe Pohoda::Builder::Round do
  describe '#to_xml' do
    context 'blank round' do
      let(:builder) { Pohoda::Builder::Round.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/round/blank_round.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'round' do
      let(:attributes) do
        { price_round: 1 }
      end

      let(:builder) do
        Pohoda::Builder::Round.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/round/round.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
