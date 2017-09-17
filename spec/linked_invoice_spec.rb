require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  context 'invoice linked to another document' do
    subject(:invoice) { Pohoda::InvoiceType.new(xml_invoice('linked_invoice.xml')) }

    its(:invoice_type) { is_expected.to eq 'issuedInvoice' }
    its(:date) { is_expected.to eq '2014-11-16' }
    its('classification_vat.classification_vat_type') { is_expected.to eq 'inland' }
    its(:note) { is_expected.to eq 'Načteno z XML' }
    its(:int_note) { is_expected.to eq 'Faktura s vazbou na celý doklad.' }

    describe 'links' do
      subject(:link) { invoice.links.first }

      its('source_agenda') { is_expected.to eq 'receivedOrder' }
      its('source_document.number') { is_expected.to eq '142100003' }
    end

    it '#to_h' do
      invoice_attributes = { invoice_type: 'issuedInvoice',
                             classification_vat: { id: '', ids: '', classification_vat_type: 'inland' },
                             date: '2014-11-16',
                             note: 'Načteno z XML',
                             int_note: 'Faktura s vazbou na celý doklad.'
      }
      link_attributes = { source_agenda: 'receivedOrder', source_document: { id: '', number: '142100003' } }

      expect(invoice.to_h).to include(invoice_attributes)
      expect(invoice.to_h[:links].first).to include(link_attributes)
    end
  end
end
