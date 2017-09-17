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

    its('payment_type.ids') { is_expected.to eq 'Master Card' }

    its('account.account_no') { is_expected.to eq '1117780287' }
    its('account.bank_code') { is_expected.to eq '0300' }

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
      its(:price_none) { is_expected.to eq '100' }
      its(:price_low) { is_expected.to eq '200' }
      its('round.price_round') { is_expected.to eq '0' }
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
                             int_note: 'Tento doklad byl vytvořen importem přes XML.' }

      expect(invoice.to_h).to include(invoice_attributes)

      expect(invoice.to_h[:classification_vat]).to include({ classification_vat_type: 'inland' })
      expect(invoice.to_h[:number]).to include({ number_requested: '2016001938' })
      expect(invoice.to_h[:accounting]).to include({ ids: '3FV' })

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

      expect(invoice.to_h[:payment_type]).to include({ ids: 'Master Card' })
      expect(invoice.to_h[:account]).to include({ account_no: '1117780287', bank_code: '0300' })
      expect(invoice.to_h[:centre]).to include({ ids: 'BRNO' })
      expect(invoice.to_h[:activity]).to include({ ids: 'SLUŽBY' })
      expect(invoice.to_h[:contract]).to include({ ids: '10Zak00002' })

      home_currency_attrs = { price_high_sum: '715', price_none: '100', price_low: '200' }
      expect(invoice.to_h[:home_currency]).to include(home_currency_attrs)
      expect(invoice.to_h[:home_currency][:round]).to include({ price_round: '0' })

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
      expect(invoice.to_h[:items].first[:stock_item][:stock_item]).to include({ ids: '83' })
      expect(invoice.to_h[:items].first[:stock_item][:store]).to include({ ids: 'Sklad' })

      second_item_attrs = { text: 'Česká pošta - Balík do ruky',
                           quantity: '1',
                           pay_vat: 'false',
                           rate_vat: 'high' }
      expect(invoice.to_h[:items].last).to include(second_item_attrs)
      home_currency_attrs = { unit_price: '0',
                              price: '0',
                              price_vat: '0' }
    end
  end
end
