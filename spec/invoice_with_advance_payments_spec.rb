require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  context 'invoice with partner linked through external reference' do
    subject(:invoice) { Pohoda::InvoiceType.new(xml_invoice('invoice_with_advance_payment.xml')) }

    describe 'advance_payment_items' do
      describe 'first item' do
        subject(:item) { invoice.advance_payments.first }

        its(:quantity) { is_expected.to eq '1.0' }
        its(:pay_vat) { is_expected.to eq 'false' }
        its(:rate_vat) { is_expected.to eq 'none' }

        its('home_currency.unit_price') { is_expected.to eq '-1000' }
        its('home_currency.price') { is_expected.to eq '-1000' }
        its('home_currency.price_vat') { is_expected.to eq '0' }
        its('home_currency.price_sum') { is_expected.to eq '-1000' }
      end

      describe 'second item' do
        subject(:item) { invoice.advance_payments.last }

        its('source_document.number') { is_expected.to eq '150800001' }

        its(:quantity) { is_expected.to eq '1.0' }
        its(:pay_vat) { is_expected.to eq 'false' }
        its(:rate_vat) { is_expected.to eq 'none' }

        its('home_currency.unit_price') { is_expected.to eq '-3000' }
        its('home_currency.price') { is_expected.to eq '-3000' }
        its('home_currency.price_vat') { is_expected.to eq '0' }
        its('home_currency.price_sum') { is_expected.to eq '-3000' }
      end
    end

    it '#to_h', :aggregate_failures do
      payment_attrs = { quantity: '1.0',
                        pay_vat: 'false',
                        rate_vat: 'none' }
      expect(invoice.to_h[:advance_payments].first).to include(payment_attrs)
      home_currency_attrs = { unit_price: '-1000',
                              price: '-1000',
                              price_vat: '0',
                              price_sum: '-1000' }
      expect(invoice.to_h[:advance_payments].first[:home_currency]).to include(home_currency_attrs)

      payment_attrs = { quantity: '1.0',
                        pay_vat: 'false',
                        rate_vat: 'none' }
      expect(invoice.to_h[:advance_payments].last).to include(payment_attrs)
      home_currency_attrs = { unit_price: '-3000',
                              price: '-3000',
                              price_vat: '0',
                              price_sum: '-3000' }
      expect(invoice.to_h[:advance_payments].last[:home_currency]).to include(home_currency_attrs)
      expect(invoice.to_h[:advance_payments].last[:source_document]).to include({ number: '150800001' })
    end
  end
end
