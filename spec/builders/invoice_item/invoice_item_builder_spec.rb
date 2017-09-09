require 'spec_helper'

RSpec.describe Pohoda::Builder::InvoiceItem do
  describe '#to_xml' do
    context 'blank invoice_item' do
      let(:builder) { Pohoda::Builder::InvoiceItem.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/invoice_item/blank_invoice_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end

    context 'invoice_item' do
      let(:attributes) do
        { id: 1 }
      end

      let(:builder) do
        Pohoda::Builder::InvoiceItem.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/invoice_item/invoice_item.xml')

        expect(builder.to_xml).to eq expected_output
      end
    end
  end
end
