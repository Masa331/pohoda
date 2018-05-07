require 'spec_helper'

RSpec.describe Pohoda::Builders::Typ::RefType do
  describe '#to_xml' do
    context 'store' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Typ::RefType.new('refType', { id: '1' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <refType>
              <typ:id>1</typ:id>
            </refType>
          XML
        )
      end
    end
  end
end
