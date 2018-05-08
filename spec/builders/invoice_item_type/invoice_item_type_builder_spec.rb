require 'spec_helper'

RSpec.describe Pohoda::Builder::InvoiceItemType do
  describe '#to_xml' do
    context 'blank invoice_item_type' do
      let(:builder) { Pohoda::Builder::InvoiceItemType.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/invoice_item_type/blank_invoice_item_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'invoice_item_type' do
      let(:attributes) do
        { id: 1 }
      end

      let(:builder) do
        Pohoda::Builder::InvoiceItemType.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/invoice_item_type/invoice_item_type.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
