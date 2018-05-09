require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::NumberType do
  describe '#to_xml' do
    context 'number' do
      let(:attributes) do
        { id: '1',
          ids: 'string identifier',
          number_requested: '2017000025' }
      end

      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::NumberType.new('number', attributes)

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <number>
              <typ:id>1</typ:id>
              <typ:ids>string identifier</typ:ids>
              <typ:numberRequested>2017000025</typ:numberRequested>
            </number>
          XML
        )
      end
    end
  end
end
