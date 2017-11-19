require 'spec_helper'
require 'pohoda/invoice_type'

RSpec.describe Pohoda::InvoiceType do
  describe 'basic invoice' do
    let(:xml) { xml_invoice('complete_invoice.xml') }
    subject(:invoice) { Pohoda::InvoiceType.new(xml) }

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

    its('invoice_header.partner_identity.ship_to_address.id') { is_expected.to eq '33' }
    its('invoice_header.partner_identity.ship_to_address.company') { is_expected.to eq 'First Company' }
    its('invoice_header.partner_identity.ship_to_address.division') { is_expected.to eq 'Some division' }
    its('invoice_header.partner_identity.ship_to_address.name') { is_expected.to eq 'Mike Ye Pan' }
    its('invoice_header.partner_identity.ship_to_address.city') { is_expected.to eq 'Paris' }
    its('invoice_header.partner_identity.ship_to_address.street') { is_expected.to eq 'ACME street' }
    its('invoice_header.partner_identity.ship_to_address.zip') { is_expected.to eq '10800' }
    its('invoice_header.partner_identity.ship_to_address.country.id') { is_expected.to eq '2' }
    its('invoice_header.partner_identity.ship_to_address.country.ids') { is_expected.to eq 'US' }
    its('invoice_header.partner_identity.ship_to_address.country.value_type') { is_expected.to eq 'nullValue' }
    its('invoice_header.partner_identity.ship_to_address.phone') { is_expected.to eq '123456789' }
    its('invoice_header.partner_identity.ship_to_address.email') { is_expected.to eq 'some@mail.com' }
    its('invoice_header.partner_identity.ship_to_address.default_ship_address') { is_expected.to eq 'false' }

    its('invoice_header.partner_identity.ext_id.ids') { is_expected.to eq 'EXT-001' }
    its('invoice_header.partner_identity.ext_id.ex_system_name') { is_expected.to eq 'Externi system' }
    its('invoice_header.partner_identity.ext_id.ex_system_text') { is_expected.to eq 'Externi system text' }

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
        subject(:item) { invoice.invoice_detail.items.first }

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
        subject(:item) { invoice.invoice_detail.items[1] }

        its('link.source_agenda') { is_expected.to eq 'receivedOrder' }
        its('link.source_item_id') { is_expected.to eq '8' }
      end
    end

    describe 'advance_payment_items' do
      describe 'first item' do
        subject(:item) { invoice.invoice_detail.advance_payments.first }

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
                             int_note: 'Tento doklad byl vytvořen importem přes XML.' }

      expect(invoice.to_h[:invoice_header]).to include(invoice_attributes)

      expect(invoice.to_h[:invoice_header][:classification_vat]).to include({ classification_vat_type: 'inland' })
      expect(invoice.to_h[:invoice_header][:number]).to include({ number_requested: '2016001938' })
      expect(invoice.to_h[:invoice_header][:accounting]).to include({ ids: '3FV' })

      expect(invoice.to_h[:invoice_header][:partner_identity]).to include({ id: '25' })
      partner_address_attrs = { company: 'firma',
                                division: 'Obchodní oddělení',
                                name: 'John Doe',
                                street: 'Studený Zejf 7',
                                city: 'Písečná',
                                zip: '79082',
                                country: { id: '1', ids: 'CZE', value_type: 'nullValue' },
                                ico: '789456',
                                dic: 'CZ789456',
                                ic_dph: 'cz123',
                                phone: '800123123',
                                mobil_phone: '800987987',
                                fax: '800123456',
                                email: 'neco@seznam.cz'
      }
      expect(invoice.to_h[:invoice_header][:partner_identity][:address]).to include(partner_address_attrs)

      partner_ship_to_attrs = { id: '33',
                                company: 'First Company',
                                division: 'Some division',
                                name: 'Mike Ye Pan',
                                city: 'Paris',
                                street: 'ACME street',
                                zip: '10800',
                                country: { id: '2', ids: 'US', value_type: 'nullValue' },
                                phone: '123456789',
                                email: 'some@mail.com',
                                default_ship_address: 'false'
      }
      expect(invoice.to_h[:invoice_header][:partner_identity][:ship_to_address]).to include(partner_ship_to_attrs)

      ext_ref_attrs = { ids: 'EXT-001',
                        ex_system_name: 'Externi system' }
      expect(invoice.to_h[:invoice_header][:partner_identity][:ext_id]).to include(ext_ref_attrs)


      my_identity_attrs = {
        address: {
          company: 'My Company',
          title: 'Mr',
          surname: 'Novak',
          name: 'Alex',
          city: 'Praha',
          street: 'Zvoníčkova',
          number: '1928/7',
          zip: '16200',
          ico: '123456',
          dic: 'CZ123456',
          ic_dph: 'CZ321321',
          phone: '999000999',
          mobil_phone: '000999000',
          fax: '123456789',
          email: 'some@email.cz',
          www: 'www.company.cz'
        },
        establishment: {
          company: 'My Company2',
          city: 'Brno',
          street: 'Nova',
          zip: '10000'
        }
      }
      expect(invoice.to_h[:invoice_header][:my_identity]).to include(my_identity_attrs)

      expect(invoice.to_h[:invoice_header][:payment_type]).to include({ ids: 'Master Card', payment_type: 'draft' })

      payment_account_attrs = { account_no: '1071743463',
                                bank_code: '2700' }
      expect(invoice.to_h[:invoice_header][:payment_account]).to include(payment_account_attrs)
      expect(invoice.to_h[:invoice_header][:account]).to include({ account_no: '1117780287', bank_code: '0300', ids: 'KB', id: '1' })
      expect(invoice.to_h[:invoice_header][:centre]).to include({ ids: 'BRNO' })
      expect(invoice.to_h[:invoice_header][:activity]).to include({ ids: 'SLUŽBY' })
      expect(invoice.to_h[:invoice_header][:contract]).to include({ ids: '10Zak00002' })

      invoice_summary_attrs = { rounding_document: 'math2one',
                                rounding_vat: 'noneEveryRate' }
      expect(invoice.to_h[:invoice_summary]).to include(invoice_summary_attrs)

      home_currency_attrs = {
        price_low: '1',
        price_low_vat: '2',
        price_low_sum: '3',
        price_high: '4',
        price_high_vat: '5',
        price_high_sum: '6',
        price_none: '7',
        price_3: '8',
        price_3_vat: '9',
        price_3_sum: '10',
        round: {
          price_round: '0',
          rate_vat_round: nil,
          price_round_sum: nil,
          price_round_sum_vat: nil
        }
      }
      expect(invoice.to_h[:invoice_summary][:home_currency]).to include(home_currency_attrs)

      foreign_currency_attrs = { rate: '21.232',
                                 amount: '1',
                                 currency: { id: '1', ids: 'EUR', value_type: 'nullValue' },
                                 price_sum: '580' }
      expect(invoice.to_h[:invoice_summary][:foreign_currency]).to include(foreign_currency_attrs)

      first_item_attrs = { id: '1',
                           text: 'Perla přání',
                           quantity: '3',
                           unit: 'ks',
                           coefficient: '2',
                           pay_vat: 'false',
                           rate_vat: 'high',
                           percent_vat: '21',
                           discount_percentage: '10',
                           home_currency: {
                             unit_price: '164.46',
                             price: '493.39',
                             price_vat: '103.61',
                             price_sum: '2381.28'
                           },
                           foreign_currency: {
                             unit_price: '1000',
                             price: '111.39',
                             price_vat: '222.61',
                             price_sum: '333.28'
                           },
                           note: 'note',
                           code: '83',
                           guarantee: '48',
                           guarantee_type: 'month',
                           stock_item: {
                             store: {
                               id: '1',
                               ids: 'Sklad',
                               value_type: 'nullValue'
                             },
                             stock_item: {
                               id: '1',
                               ids: '83',
                               ext_id: {
                                 ids: 'EXT-002',
                                 ex_system_name: 'Externi system',
                                 ex_system_text: 'Externi system text'
                               },
                               ean: '123456'
                             },
                             serial_number: '123'
                           },
                           accounting: {
                             id: '1',
                             ids: '3FV',
                             value_type: 'nullValue'
                           },
                           classification_vat: {
                             id: '1',
                             ids: 'something',
                             classification_vat_type: 'inland'
                           },
                           classification_kvdph: {
                             id: '2',
                             ids: '9iv',
                             value_type: 'nullValue'
                           },
                           centre: {
                             id: '2',
                             ids: 'BRNO',
                             value_type: 'nullValue'
                           },
                           activity: {
                             id: '2',
                             ids: 'SLUŽBY',
                             value_type: 'nullValue'
                           },
                           contract: {
                             id: '2',
                             ids: '10Zak00002',
                             value_type: 'nullValue'
                           },
                           expiration_date: '2014-10-02'
      }
      expect(invoice.to_h[:invoice_detail][:items].first).to include(first_item_attrs)

      middle_item_link_attrs = { source_agenda: 'receivedOrder',
                                 source_item_id: '8' }
      expect(invoice.to_h[:invoice_detail][:items][1][:link]).to include(middle_item_link_attrs)

      link_attributes = { source_agenda: 'receivedOrder', source_document: { id: nil, number: '142100003' } }

      expect(invoice.to_h[:links].first).to include(link_attributes)

      payment_attrs = {
        id: '1',
        source_document: { id: '2', number: '150800001' },
        quantity: '1.0',
        pay_vat: 'false',
        rate_vat: 'none',
        percent_vat: '1',
        discount_percentage: '3',
        home_currency: {
          unit_price: '-100',
          price: '-999',
          price_vat: '67',
          price_sum: '-89'
        },
        foreign_currency: {
          unit_price: '-500',
          price: '-200',
          price_vat: '5',
          price_sum: '-333'
        },
        note: 'Some note',
        accounting: {
          id: '1',
          ids: '4vf',
          value_type: 'nullValue'
        },
        classification_vat: {
          id: '1',
          ids: 'something',
          classification_vat_type: 'inland'
        },
        classification_kvdph: {
          id: '2',
          ids: '9iv',
          value_type: 'nullValue'
        },
        centre: {
          id: '2',
          ids: 'BRNO',
          value_type: 'nullValue'
        },
        activity: {
          id: '2',
          ids: 'SLUŽBY',
          value_type: 'nullValue'
        },
        contract: {
          id: '2',
          ids: '10Zak00002',
          value_type: 'nullValue'
        },
        voucher_eet: 'false'
      }
      expect(invoice.to_h[:invoice_detail][:advance_payments].first).to include(payment_attrs)
    end
  end
end
