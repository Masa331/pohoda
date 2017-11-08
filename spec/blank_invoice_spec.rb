require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  context 'invoice with no data' do
    let(:xml) { xml_invoice('blank_invoice.xml') }
    subject(:invoice) { Pohoda::InvoiceType.new(xml) }

    its(:links) { is_expected.to eq [] }
    its('invoice_header') { is_expected.to eq nil }

    its('invoice_detail') { is_expected.to eq nil }

    its('invoice_summary') { is_expected.to eq nil }

    it '#to_h' do
      hsh =
        { links: [],
          invoice_header: {},
          invoice_detail: {},
          invoice_summary: {} }

      expect(invoice.to_h).to match(hsh)
    end
  end
end
