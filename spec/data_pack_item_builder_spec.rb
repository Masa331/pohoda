require 'spec_helper'

RSpec.describe Pohoda::Builder::DataPackItem do
  context 'data pack with no items' do
    describe '#to_xml' do
      it 'retuns xml string' do
        builder = Pohoda::Builder::DataPackItem.new
        expected_output = File.read('spec/fixtures/builded_data_pack_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
