require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::ExtIdType do
  describe '#to_xml' do
    context 'external id' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::ExtIdType.new('extId', { ids: 'string identifier' })
        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <extId>
              <typ:ids>string identifier</typ:ids>
            </extId>
          XML
        )
      end
    end
  end
end
