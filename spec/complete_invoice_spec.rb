require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  describe 'basic invoice' do
    let(:xml) { xml_invoice('basic_invoice.xml') }
    subject(:invoice) { Pohoda::InvoiceType.new(xml) }

    its(:invoice_type) { is_expected.to eq 'issuedInvoice' }
    its('number.number_requested') { is_expected.to eq '2016001938' }
    its(:number_order) { is_expected.to eq '2016001748' }
    its(:date_order) { is_expected.to eq '2014-10-02' }
    its(:sym_var) { is_expected.to eq '2016001938' }
    its(:date) { is_expected.to eq '2016-10-17' }
    its(:date_tax) { is_expected.to eq '2016-10-17' }
    its(:date_due) { is_expected.to eq '2016-10-31' }
    its(:date_accounting) { is_expected.to eq '2014-10-14' }
    its('classification_vat.classification_vat_type') { is_expected.to eq 'inland' }
    its('accounting.ids') { is_expected.to eq '3FV' }
    its(:text) { is_expected.to eq 'Faktura za zboží s adresou bez vazby na Adresář' }

    its('partner_identity.id') { is_expected.to eq '25' }
    its('partner_identity.address.company') { is_expected.to eq 'firma' }
    its('partner_identity.address.division') { is_expected.to eq 'Obchodní oddělení' }
    its('partner_identity.address.name') { is_expected.to eq 'John Doe' }
    its('partner_identity.address.city') { is_expected.to eq 'Písečná' }
    its('partner_identity.address.street') { is_expected.to eq 'Studený Zejf 7' }
    its('partner_identity.address.zip') { is_expected.to eq '79082' }
    its('partner_identity.address.country.ids') { is_expected.to eq 'CZE' }
    its('partner_identity.address.ico') { is_expected.to eq '789456' }
    its('partner_identity.address.dic') { is_expected.to eq 'CZ789456' }

    its('partner_identity.ship_to_address.name') { is_expected.to eq 'Soukop Bohumil' }
    its('partner_identity.ship_to_address.city') { is_expected.to eq 'Praha' }
    its('partner_identity.ship_to_address.street') { is_expected.to eq 'Nová 1475' }

    its('partner_identity.ext_id.ids') { is_expected.to eq 'EXT-001' }
    its('partner_identity.ext_id.ex_system_name') { is_expected.to eq 'Externi system' }

    its('payment_type.ids') { is_expected.to eq 'Master Card' }
    its('payment_type.payment_type') { is_expected.to eq 'draft' }

    its('payment_account.account_no') { is_expected.to eq '1071743463' }
    its('payment_account.bank_code') { is_expected.to eq '2700' }

    its('account.account_no') { is_expected.to eq '1117780287' }
    its('account.bank_code') { is_expected.to eq '0300' }
    its('account.ids') { is_expected.to eq 'KB' }

    its(:note) { is_expected.to eq 'Načteno z XML' }
    its(:int_note) { is_expected.to eq 'Tento doklad byl vytvořen importem přes XML.' }
    its('centre.ids') { is_expected.to eq 'BRNO' }
    its('activity.ids') { is_expected.to eq 'SLUŽBY' }
    its('contract.ids') { is_expected.to eq '10Zak00002' }

    describe 'items' do
      describe 'first_item' do
        subject(:item) { invoice.items.first }

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
        subject(:item) { invoice.items[1] }

        its('link.source_agenda') { is_expected.to eq 'receivedOrder' }
        its('link.source_item_id') { is_expected.to eq '8' }
      end

      describe 'last item' do
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

    its(:rounding_document) { is_expected.to eq 'math2one' }
    its(:rounding_vat) { is_expected.to eq 'noneEveryRate' }

    its('home_currency.price_high_sum') { is_expected.to eq '715' }
    its('home_currency.price_none') { is_expected.to eq '100' }
    its('home_currency.price_low') { is_expected.to eq '200' }
    its('home_currency.round.price_round') { is_expected.to eq '0' }

    its('foreign_currency.currency.ids') { is_expected.to eq 'EUR' }
    its('foreign_currency.rate') { is_expected.to eq '21.232' }
    its('foreign_currency.amount') { is_expected.to eq '1' }
    its('foreign_currency.price_sum') { is_expected.to eq '580' }

    describe 'links' do
      subject(:link) { invoice.links.first }

      its('source_agenda') { is_expected.to eq 'receivedOrder' }
      its('source_document.number') { is_expected.to eq '142100003' }
    end

    it '#to_h', :aggregate_failures do
      invoice_attributes = { invoice_type: 'issuedInvoice',
                             sym_var: '2016001938',
                             date: '2016-10-17',
                             date_tax: '2016-10-17',
                             date_accounting: '2014-10-14',
                             date_due: '2016-10-31',
                             text: 'Faktura za zboží s adresou bez vazby na Adresář',
                             number_order: '2016001748',
                             date_order: '2014-10-02',
                             note: 'Načteno z XML',
                             rounding_document: 'math2one',
                             rounding_vat: 'noneEveryRate',
                             int_note: 'Tento doklad byl vytvořen importem přes XML.' }

      expect(invoice.to_h).to include(invoice_attributes)

      expect(invoice.to_h[:classification_vat]).to include({ classification_vat_type: 'inland' })
      expect(invoice.to_h[:number]).to include({ number_requested: '2016001938' })
      expect(invoice.to_h[:accounting]).to include({ ids: '3FV' })

      expect(invoice.to_h[:partner_identity]).to include({ id: '25' })
      partner_address_attrs = { company: 'firma',
                                division: 'Obchodní oddělení',
                                name: 'John Doe',
                                street: 'Studený Zejf 7',
                                city: 'Písečná',
                                zip: '79082',
                                country: { id: '', ids: 'CZE', value_type: '' },
                                ico: '789456',
                                dic: 'CZ789456'
      }
      expect(invoice.to_h[:partner_identity][:address]).to include(partner_address_attrs)

      partner_ship_to_attrs = { name: 'Soukop Bohumil',
                                city: 'Praha',
                                street: 'Nová 1475' }
      expect(invoice.to_h[:partner_identity][:ship_to_address]).to include(partner_ship_to_attrs)

      ext_ref_attrs = { ids: 'EXT-001',
                        ex_system_name: 'Externi system' }
      expect(invoice.to_h[:partner_identity][:ext_id]).to include(ext_ref_attrs)

      expect(invoice.to_h[:payment_type]).to include({ ids: 'Master Card', payment_type: 'draft' })

      payment_account_attrs = { account_no: '1071743463',
                                bank_code: '2700' }
      expect(invoice.to_h[:payment_account]).to include(payment_account_attrs)
      expect(invoice.to_h[:account]).to include({ account_no: '1117780287', bank_code: '0300', ids: 'KB' })
      expect(invoice.to_h[:centre]).to include({ ids: 'BRNO' })
      expect(invoice.to_h[:activity]).to include({ ids: 'SLUŽBY' })
      expect(invoice.to_h[:contract]).to include({ ids: '10Zak00002' })

      home_currency_attrs = { price_high_sum: '715', price_none: '100', price_low: '200' }
      expect(invoice.to_h[:home_currency]).to include(home_currency_attrs)
      expect(invoice.to_h[:home_currency][:round]).to include({ price_round: '0' })

      foreign_currency_attrs = { rate: '21.232',
                                 amount: '1',
                                 currency: { id: '', ids: 'EUR', value_type: '' },
                                 price_sum: '580' }
      expect(invoice.to_h[:foreign_currency]).to include(foreign_currency_attrs)

      first_item_attrs = { text: 'Perla přání',
                           quantity: '3',
                           unit: 'ks',
                           pay_vat: 'false',
                           rate_vat: 'high',
                           guarantee: '48',
                           guarantee_type: 'month',
                           code: '83' }
      expect(invoice.to_h[:items].first).to include(first_item_attrs)
      home_currency_attrs = { unit_price: '164.46',
                              price: '493.39',
                              price_vat: '103.61' }
      foreign_currency_attrs = { unit_price: '1000' }
      expect(invoice.to_h[:items].first[:stock_item][:stock_item]).to include({ ids: '83' })
      expect(invoice.to_h[:items].first[:stock_item][:store]).to include({ ids: 'Sklad' })
      expect(invoice.to_h[:items].first[:home_currency]).to include(home_currency_attrs)
      expect(invoice.to_h[:items].first[:foreign_currency]).to include(foreign_currency_attrs)

      middle_item_link_attrs = { source_agenda: 'receivedOrder',
                                 source_item_id: '8' }
      expect(invoice.to_h[:items][1][:link]).to include(middle_item_link_attrs)

      second_item_attrs = { text: 'Česká pošta - Balík do ruky',
                           quantity: '1',
                           pay_vat: 'false',
                           rate_vat: 'high' }
      expect(invoice.to_h[:items].last).to include(second_item_attrs)
      home_currency_attrs = { unit_price: '0',
                              price: '0',
                              price_vat: '0' }

      link_attributes = { source_agenda: 'receivedOrder', source_document: { id: '', number: '142100003' } }

      expect(invoice.to_h[:links].first).to include(link_attributes)

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
