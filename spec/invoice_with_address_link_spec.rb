require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  context 'invoice linked to another document' do
    subject(:invoice) { Pohoda::InvoiceType.new(xml_invoice('invoice_with_address_link.xml')) }

    its('accounting.ids') { is_expected.to eq '3Fv' }
    its('partner_identity.id') { is_expected.to eq '25' }
    its('payment_type.payment_type') { is_expected.to eq 'draft' }
    its('account.ids') { is_expected.to eq 'KB' }

    it '#to_h' do
      expect(invoice.to_h[:accounting]).to include({ ids: '3Fv' })
      expect(invoice.to_h[:partner_identity]).to include({ id: '25' })
      expect(invoice.to_h[:payment_type]).to include({ payment_type: 'draft' })
      expect(invoice.to_h[:account]).to include({ ids: 'KB' })
    end
  end
end
