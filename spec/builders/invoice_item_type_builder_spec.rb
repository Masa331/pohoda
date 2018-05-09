require 'spec_helper'

RSpec.describe Pohoda::Builders::Inv::InvoiceItemType do
  describe '#to_xml' do
    context 'invoice_item_type' do
      it 'retuns xml string' do
        builder = Pohoda::Builders::Inv::InvoiceItemType.new('invoiceItem', { id: '1' })

        expect(builder.to_xml).to eq(
          <<~XML
            <?xml version="1.0"?>
            <invoiceItem>
              <inv:id>1</inv:id>
            </invoiceItem>
          XML
        )
      end
    end
  end
end
