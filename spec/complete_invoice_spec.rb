require 'spec_helper'

RSpec.describe Pohoda::Parsers::Inv::InvoiceType do
  describe 'complete invoice' do
    let(:raw) { File.read('./spec/fixtures/basic_invoice.xml') }
    let(:parsed) { Pohoda.parse(raw) }
  end

  describe 'basic invoice' do
    let(:raw) { File.read('./spec/fixtures/complete_invoice.xml') }
    let(:parsed) { Pohoda.parse(raw) }
    subject(:invoice) { parsed.data_pack_item.first.invoice }

    describe 'links' do
      subject(:link) { invoice.links.first }
      its('source_agenda') { is_expected.to eq 'receivedOrder' }
      its('source_document.number') { is_expected.to eq '142100003' }
    end

    its('invoice_header.invoice_type') { is_expected.to eq 'issuedInvoice' }
    its('invoice_header.number.number_requested') { is_expected.to eq '2016001938' }
    its('invoice_header.number_order') { is_expected.to eq '2016001748' }
    its('invoice_header.date_order') { is_expected.to eq '2014-10-02' }
    its('invoice_header.sym_var') { is_expected.to eq '2016001938' }
    its('invoice_header.date') { is_expected.to eq '2016-10-17' }
    its('invoice_header.date_tax') { is_expected.to eq '2016-10-17' }
    its('invoice_header.date_due') { is_expected.to eq '2016-10-31' }
    its('invoice_header.date_accounting') { is_expected.to eq '2014-10-14' }
    its('invoice_header.classification_vat.id') { is_expected.to eq '1' }
    its('invoice_header.classification_vat.ids') { is_expected.to eq 'something' }
    its('invoice_header.classification_vat.classification_vat_type') { is_expected.to eq 'inland' }

    its('invoice_header.accounting.id') { is_expected.to eq '1' }
    its('invoice_header.accounting.ids') { is_expected.to eq '3FV' }
    its('invoice_header.accounting.accounting_type') { is_expected.to eq 'withoutAccounting' }

    its('invoice_header.text') { is_expected.to eq 'Faktura za zboží s adresou bez vazby na Adresář' }

    its('invoice_header.partner_identity.id') { is_expected.to eq '25' }
    its('invoice_header.partner_identity.address.company') { is_expected.to eq 'firma' }
    its('invoice_header.partner_identity.address.division') { is_expected.to eq 'Obchodní oddělení' }
    its('invoice_header.partner_identity.address.name') { is_expected.to eq 'John Doe' }
    its('invoice_header.partner_identity.address.city') { is_expected.to eq 'Písečná' }
    its('invoice_header.partner_identity.address.street') { is_expected.to eq 'Studený Zejf 7' }
    its('invoice_header.partner_identity.address.zip') { is_expected.to eq '79082' }
    its('invoice_header.partner_identity.address.country.id') { is_expected.to eq '1' }
    its('invoice_header.partner_identity.address.country.ids') { is_expected.to eq 'CZE' }
    its('invoice_header.partner_identity.address.country.value_type') { is_expected.to eq 'nullValue' }
    its('invoice_header.partner_identity.address.ico') { is_expected.to eq '789456' }
    its('invoice_header.partner_identity.address.dic') { is_expected.to eq 'CZ789456' }
    its('invoice_header.partner_identity.address.ic_dph') { is_expected.to eq 'cz123' }
    its('invoice_header.partner_identity.address.phone') { is_expected.to eq '800123123' }
    its('invoice_header.partner_identity.address.mobil_phone') { is_expected.to eq '800987987' }
    its('invoice_header.partner_identity.address.fax') { is_expected.to eq '800123456' }
    its('invoice_header.partner_identity.address.email') { is_expected.to eq 'neco@seznam.cz' }

    its('invoice_header.partner_identity.ship_to_address.first.id') { is_expected.to eq '33' }
    its('invoice_header.partner_identity.ship_to_address.first.company') { is_expected.to eq 'First Company' }
    its('invoice_header.partner_identity.ship_to_address.first.division') { is_expected.to eq 'Some division' }
    its('invoice_header.partner_identity.ship_to_address.first.name') { is_expected.to eq 'Mike Ye Pan' }
    its('invoice_header.partner_identity.ship_to_address.first.city') { is_expected.to eq 'Paris' }
    its('invoice_header.partner_identity.ship_to_address.first.street') { is_expected.to eq 'ACME street' }
    its('invoice_header.partner_identity.ship_to_address.first.zip') { is_expected.to eq '10800' }
    its('invoice_header.partner_identity.ship_to_address.first.country.id') { is_expected.to eq '2' }
    its('invoice_header.partner_identity.ship_to_address.first.country.ids') { is_expected.to eq 'US' }
    its('invoice_header.partner_identity.ship_to_address.first.country.value_type') { is_expected.to eq 'nullValue' }
    its('invoice_header.partner_identity.ship_to_address.first.phone') { is_expected.to eq '123456789' }
    its('invoice_header.partner_identity.ship_to_address.first.email') { is_expected.to eq 'some@mail.com' }
    its('invoice_header.partner_identity.ship_to_address.first.default_ship_address') { is_expected.to eq 'false' }

    its('invoice_header.partner_identity.ext_id.first.ids') { is_expected.to eq 'EXT-001' }
    its('invoice_header.partner_identity.ext_id.first.ex_system_name') { is_expected.to eq 'Externi system' }
    its('invoice_header.partner_identity.ext_id.first.ex_system_text') { is_expected.to eq 'Externi system text' }

    its('invoice_header.my_identity.address.company') { is_expected.to eq 'My Company' }
    its('invoice_header.my_identity.address.title') { is_expected.to eq 'Mr' }
    its('invoice_header.my_identity.address.surname') { is_expected.to eq 'Novak' }
    its('invoice_header.my_identity.address.name') { is_expected.to eq 'Alex' }
    its('invoice_header.my_identity.address.city') { is_expected.to eq 'Praha' }
    its('invoice_header.my_identity.address.street') { is_expected.to eq 'Zvoníčkova' }
    its('invoice_header.my_identity.address.number') { is_expected.to eq '1928/7' }
    its('invoice_header.my_identity.address.zip') { is_expected.to eq '16200' }
    its('invoice_header.my_identity.address.ico') { is_expected.to eq '123456' }
    its('invoice_header.my_identity.address.dic') { is_expected.to eq 'CZ123456' }
    its('invoice_header.my_identity.address.ic_dph') { is_expected.to eq 'CZ321321' }
    its('invoice_header.my_identity.address.phone') { is_expected.to eq '999000999' }
    its('invoice_header.my_identity.address.mobil_phone') { is_expected.to eq '000999000' }
    its('invoice_header.my_identity.address.fax') { is_expected.to eq '123456789' }
    its('invoice_header.my_identity.address.email') { is_expected.to eq 'some@email.cz' }
    its('invoice_header.my_identity.address.www') { is_expected.to eq 'www.company.cz' }

    its('invoice_header.my_identity.establishment.company') { is_expected.to eq 'My Company2' }
    its('invoice_header.my_identity.establishment.city') { is_expected.to eq 'Brno' }
    its('invoice_header.my_identity.establishment.street') { is_expected.to eq 'Nova' }
    its('invoice_header.my_identity.establishment.zip') { is_expected.to eq '10000' }

    its('invoice_header.payment_type.ids') { is_expected.to eq 'Master Card' }
    its('invoice_header.payment_type.payment_type') { is_expected.to eq 'draft' }

    its('invoice_header.payment_account.account_no') { is_expected.to eq '1071743463' }
    its('invoice_header.payment_account.bank_code') { is_expected.to eq '2700' }

    its('invoice_header.account.account_no') { is_expected.to eq '1117780287' }
    its('invoice_header.account.bank_code') { is_expected.to eq '0300' }
    its('invoice_header.account.ids') { is_expected.to eq 'KB' }
    its('invoice_header.account.id') { is_expected.to eq '1' }

    its('invoice_header.note') { is_expected.to eq 'Načteno z XML' }
    its('invoice_header.int_note') { is_expected.to eq 'Tento doklad byl vytvořen importem přes XML.' }
    its('invoice_header.centre.ids') { is_expected.to eq 'BRNO' }
    its('invoice_header.activity.ids') { is_expected.to eq 'SLUŽBY' }
    its('invoice_header.contract.ids') { is_expected.to eq '10Zak00002' }

    describe 'items' do
      describe 'first_item' do
        subject(:item) { invoice.invoice_detail.invoice_item.first }

        its(:text) { is_expected.to eq 'Perla přání' }
        its(:quantity) { is_expected.to eq '3' }
        its(:unit) { is_expected.to eq 'ks' }
        its(:pay_vat) { is_expected.to eq 'false' }
        its(:rate_vat) { is_expected.to eq 'high' }
        its(:code) { is_expected.to eq '83' }
        its(:guarantee) { is_expected.to eq '48' }
        its(:guarantee_type) { is_expected.to eq 'month' }
        its(:code) { is_expected.to eq '83' }

        its('foreign_currency.unit_price') { is_expected.to eq '1000' }

        context 'home_currency' do
          subject(:home_currency) { item.home_currency }

          its(:unit_price) { is_expected.to eq '164.46' }
          its(:price) { is_expected.to eq '493.39' }
          its(:price_vat) { is_expected.to eq '103.61' }
          its(:price_sum) { is_expected.to eq '2381.28' }
        end

        its('stock_item.store.ids') { is_expected.to eq 'Sklad' }
        its('stock_item.stock_item.ids') { is_expected.to eq '83' }
      end

      describe 'middle item' do
        subject(:item) { invoice.invoice_detail.invoice_item[1] }

        its('link.source_agenda') { is_expected.to eq 'receivedOrder' }
        its('link.source_item_id') { is_expected.to eq '8' }
      end
    end

    describe 'advance_payment_items' do
      describe 'first item' do
        subject(:item) { invoice.invoice_detail.invoice_advance_payment_item.first }

        its('id') { is_expected.to eq '1' }
        its('source_document.id') { is_expected.to eq '2' }
        its('source_document.number') { is_expected.to eq '150800001' }

        its(:quantity) { is_expected.to eq '1.0' }
        its(:pay_vat) { is_expected.to eq 'false' }
        its(:rate_vat) { is_expected.to eq 'none' }
        its(:percent_vat) { is_expected.to eq '1' }
        its(:discount_percentage) { is_expected.to eq '3' }

        its('home_currency.unit_price') { is_expected.to eq '-100' }
        its('home_currency.price') { is_expected.to eq '-999' }
        its('home_currency.price_vat') { is_expected.to eq '67' }
        its('home_currency.price_sum') { is_expected.to eq '-89' }

        its('foreign_currency.unit_price') { is_expected.to eq '-500' }
        its('foreign_currency.price') { is_expected.to eq '-200' }
        its('foreign_currency.price_vat') { is_expected.to eq '5' }
        its('foreign_currency.price_sum') { is_expected.to eq '-333' }

        its('note') { is_expected.to eq 'Some note' }

        its('accounting.id') { is_expected.to eq '1' }
        its('accounting.ids') { is_expected.to eq '4vf' }
        its('accounting.value_type') { is_expected.to eq 'nullValue' }

        its('classification_vat.id') { is_expected.to eq '1' }
        its('classification_vat.ids') { is_expected.to eq 'something' }
        its('classification_vat.classification_vat_type') { is_expected.to eq 'inland' }

        its('classification_kvdph.id') { is_expected.to eq '2' }
        its('classification_kvdph.ids') { is_expected.to eq '9iv' }
        its('classification_kvdph.value_type') { is_expected.to eq 'nullValue' }

        its('centre.id') { is_expected.to eq '2' }
        its('centre.ids') { is_expected.to eq 'BRNO' }
        its('centre.value_type') { is_expected.to eq 'nullValue' }

        its('activity.id') { is_expected.to eq '2' }
        its('activity.ids') { is_expected.to eq 'SLUŽBY' }
        its('activity.value_type') { is_expected.to eq 'nullValue' }

        its('contract.id') { is_expected.to eq '2' }
        its('contract.ids') { is_expected.to eq '10Zak00002' }
        its('contract.value_type') { is_expected.to eq 'nullValue' }
      end
    end

    its('invoice_summary.rounding_document') { is_expected.to eq 'math2one' }
    its('invoice_summary.rounding_vat') { is_expected.to eq 'noneEveryRate' }

    its('invoice_summary.home_currency.price_high_sum') { is_expected.to eq '6' }
    its('invoice_summary.home_currency.price_none') { is_expected.to eq '7' }
    its('invoice_summary.home_currency.price_low') { is_expected.to eq '1' }
    its('invoice_summary.home_currency.round.price_round') { is_expected.to eq '0' }

    its('invoice_summary.foreign_currency.currency.id') { is_expected.to eq '1' }
    its('invoice_summary.foreign_currency.currency.ids') { is_expected.to eq 'EUR' }
    its('invoice_summary.foreign_currency.currency.value_type') { is_expected.to eq 'nullValue' }
    its('invoice_summary.foreign_currency.rate') { is_expected.to eq '21.232' }
    its('invoice_summary.foreign_currency.amount') { is_expected.to eq '1' }
    its('invoice_summary.foreign_currency.price_sum') { is_expected.to eq '580' }
  end
end
