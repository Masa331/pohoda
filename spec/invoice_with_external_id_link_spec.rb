require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  context 'invoice with partner linked through external reference' do
    subject(:invoice) { Pohoda::InvoiceType.new(xml_invoice('invoice_with_external_id.xml')) }

    its('partner_identity.ext_id.ids') { is_expected.to eq 'EXT-001' }
    its('partner_identity.ext_id.ex_system_name') { is_expected.to eq 'Externi system' }

    its('payment_account.account_no') { is_expected.to eq '1071743463' }
    its('payment_account.bank_code') { is_expected.to eq '2700' }

    describe 'items' do
      subject(:item) { invoice.items.first }

      its('link.source_agenda') { is_expected.to eq 'receivedOrder' }
      its('link.source_item_id') { is_expected.to eq '8' }
    end

    it '#to_h' do
      ext_ref_attrs = { ids: 'EXT-001',
                        ex_system_name: 'Externi system' }
      expect(invoice.to_h[:partner_identity][:ext_id]).to include(ext_ref_attrs)

      payment_account_attrs = { account_no: '1071743463',
                                bank_code: '2700' }
      expect(invoice.to_h[:payment_account]).to include(payment_account_attrs)

      item_link_attrs = { source_agenda: 'receivedOrder',
                          source_item_id: '8' }
      expect(invoice.to_h[:items].first[:link]).to include(item_link_attrs)
    end
  end
end
