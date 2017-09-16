require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  describe 'basic invoice' do
    let(:xml) { xml_invoice('basic_invoice.xml') }
    subject(:invoice) { Pohoda::InvoiceType.new(xml) }

    its(:invoice_type) { is_expected.to eq 'issuedInvoice' }
    its('number.number_requested') { is_expected.to eq '2016001938' }
    its(:number_order) { is_expected.to eq '2016001748' }
    its(:sym_var) { is_expected.to eq '2016001938' }
    its(:date) { is_expected.to eq '2016-10-17' }
    its(:date_tax) { is_expected.to eq '2016-10-17' }
    its(:date_due) { is_expected.to eq '2016-10-31' }

    describe 'partner_identity' do
      subject(:address) { invoice.partner_identity }

      its('address.company') { is_expected.to eq '' }
      its('address.name') { is_expected.to eq 'John Doe' }
      its('address.city') { is_expected.to eq 'Písečná' }
      its('address.street') { is_expected.to eq 'Studený Zejf 7' }
      its('address.zip') { is_expected.to eq '79082' }
      its('address.country.ids') { is_expected.to eq 'CZE' }
      its('address.ico') { is_expected.to eq '' }
      its('address.dic') { is_expected.to eq '' }
    end

    describe 'items' do
      describe 'first_item' do
        subject(:item) { invoice.items.first }

        its(:text) { is_expected.to eq 'Perla přání' }
        its(:quantity) { is_expected.to eq '3' }
        its(:unit) { is_expected.to eq 'ks' }
        its(:pay_vat) { is_expected.to eq 'false' }
        its(:rate_vat) { is_expected.to eq 'high' }
        its(:code) { is_expected.to eq '83' }

        context 'home_currency' do
          subject(:home_currency) { item.home_currency }

          its(:unit_price) { is_expected.to eq '164.46' }
          its(:price) { is_expected.to eq '493.39' }
          its(:price_vat) { is_expected.to eq '103.61' }
        end

        its('stock_item.store.ids') { is_expected.to eq 'Sklad' }
        its('stock_item.stock_item.ids') { is_expected.to eq '83' }
      end

      describe 'second_item' do
        subject(:item) { invoice.items.last }

        its(:text) { is_expected.to eq 'Česká pošta - Balík do ruky' }
        its(:quantity) { is_expected.to eq '1' }
        its(:unit) { is_expected.to eq '' }
        its(:pay_vat) { is_expected.to eq 'false' }
        its(:rate_vat) { is_expected.to eq 'high' }

        context 'home_currency' do
          subject(:home_currency) { item.home_currency }

          its(:unit_price) { is_expected.to eq '0' }
          its(:price) { is_expected.to eq '0' }
          its(:price_vat) { is_expected.to eq '0' }
        end
      end
    end

    its(:rounding_document) { is_expected.to eq 'math2one' }

    describe 'home_currency' do
      subject(:home_currency) { invoice.home_currency }

      its(:price_high_sum) { is_expected.to eq '715' }
      its('round.price_round') { is_expected.to eq '0' }
    end
  end
end
