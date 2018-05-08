require 'spec_helper'
require 'equivalent-xml'

RSpec.describe Pohoda::Builder::InvoiceType do
  describe '#to_xml' do
    let(:schema) { Nokogiri::XML::Schema(File.read('spec/fixtures/pohoda_xsd/invoice.xsd')) }

    context 'blank invoice' do
      let(:builder) { Pohoda::Builder::InvoiceType.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/invoice_type/blank_invoice_type.xml')

        expect(builder.to_xml).to eq expected_output
      end

      it 'returned string is valid against invoice XSD' do
        errors = schema.validate(builder.doc)
        errors.each { |e| puts e }
        expect(errors.size).to eq 0
      end
    end
    context 'basic invoice' do
      let(:attributes) do
        links = [{ source_agenda: 'receivedOrder', source_document: { number: '142100003' } }]
        invoice_header = {
          id: '1',
          ext_id: { ids: 'EXT-001', ex_system_name: 'Externi system', ex_system_text: 'Externi system text' },
          invoice_type: 'issuedInvoice',
          storno: 'cancelDocument',
          sphere_type: 'business',
          number: { id: '1', ids: 'something', number_requested: '2016001938' },
          sym_var: '2016001938',
          sym_par: '2016001938',
          original_document: '123',
          original_document_number: '456',
          date: '2016-10-17',
          date_tax: '2016-10-17',
          date_accounting: '2014-10-14',
          date_khdph: '2014-10-14',
          date_due: '2016-10-31',
          date_application_vat: '2016-10-31',
          date_delivery: '2016-10-31',
          accounting: { ids: '3FV', id: '1', accounting_type: 'withoutAccounting' },
          classification_vat: { id: 1, ids: 'something', classification_vat_type: 'inland' },
          classification_kvdph: { id: 2, ids: '9iv', value_type: 'nullValue' },
          number_khdph: 'Faktura 111',
          number_kvdph: 'Faktura 222',
          text: 'Faktura za zboží s adresou bez vazby na Adresář',
          partner_identity: {
            id: 25,
            ext_id: { ids: 'EXT-001', ex_system_name: 'Externi system', ex_system_text: 'Externi system text' },
            address: {
              company: 'firma',
              division: 'Obchodní oddělení',
              name: 'John Doe',
              city: 'Písečná',
              street: 'Studený Zejf 7',
              zip: '79082',
              ico: '789456',
              dic: 'CZ789456',
              ic_dph: 'cz123',
              country: { ids: 'CZE', id: '1', value_type: 'nullValue' },
              phone: '800123123',
              mobil_phone: '800987987',
              fax: '800123456',
              email: 'neco@seznam.cz',
            },
            ship_to_address: {
              id: '33',
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
            },
          },
          my_identity: {
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
          },
          order: { id: 2, ids: '9iv', value_type: 'nullValue' },
          number_order: '2016001748',
          date_order: '2014-10-02',
          price_level: { id: 2, ids: '9iv', value_type: 'nullValue' },
          payment_type: { id: 1, ids: 'Master Card', payment_type: 'draft' },
          account: { account_no: '1117780287', bank_code: '0300', ids: 'KB', id: '1' },
          sym_const: '0308',
          sym_spec: '123',
          payment_account: { account_no: '1071743463', bank_code: '2700' },
          payment_terminal: 'false',
          centre: { id: 2, ids: 'BRNO', value_type: 'nullValue' },
          activity: { id: 2, ids: 'SLUŽBY', value_type: 'nullValue' },
          contract: { id: 2, ids: '10Zak00002', value_type: 'nullValue' },
          reg_vat_in_eu: { id: '2', ids: 'DE' },
          moss: { ids: 'DE' },
          evidentiary_resources_moss: { ids: 'smth else' },
          accounting_period_moss: '123',
          carrier: { id: 2, ids: '10Zak00002', value_type: 'nullValue' },
          note: 'Načteno z XML',
          int_note: 'Tento doklad byl vytvořen importem přes XML.',
        }

        item1 =
          { id: '1',
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
        item2 =
          { link: { source_agenda: 'receivedOrder', source_item_id: '8' } }
        payment1 = {
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
        invoice_detail = { items: [item1, item2], advance_payments: [payment1] }

        invoice_summary = {
          rounding_document: 'math2one',
          rounding_vat: 'noneEveryRate',
          calculate_vat: 'false',
          home_currency: {
            price_low: 1,
            price_low_vat: 2,
            price_low_sum: 3,
            price_high: 4,
            price_high_vat: 5,
            price_high_sum: 6,
            price_none: 7,
            price_3: 8,
            price_3_vat: 9,
            price_3_sum: 10,
            round: {
              price_round: 0,
              # rate_vat_round: 11,
              # price_round_sum: 12,
              # price_round_sum_vat: 13
            } },
            foreign_currency: { currency: { id: 1, ids: 'EUR', value_type: 'nullValue' },
                                rate: '21.232',
                                amount: 1,
                                price_sum: 580 }
        }

        { links: links,
          invoice_header: invoice_header,
          invoice_detail: invoice_detail,
          invoice_summary: invoice_summary }
      end

      let(:builder) do
        Pohoda::Builder::InvoiceType.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/fixtures/complete_invoice.xml')
        noko = Nokogiri::XML(expected_output).at_xpath('//inv:invoice')
        expect(builder.to_xml).to be_equivalent_to noko.to_xml
      end

      it 'parsed and builded invoice are the same' do
        original_xml = Nokogiri::XML(File.read('spec/fixtures/complete_invoice.xml')).at_xpath('//inv:invoice')

        xml = File.read('./spec/fixtures/complete_invoice.xml')
        inv = Pohoda.parse(xml).data_pack_items.first.invoice

        builder = Pohoda::Builder::InvoiceType.new(inv.to_h)

        expect(builder.to_xml).to be_equivalent_to original_xml.to_xml
      end

      it 'returned string is valid against invoice XSD' do
        errors = schema.validate(builder.doc)
        errors.each { |e| puts e }
        expect(errors.size).to eq 0
      end
    end
  end
end
