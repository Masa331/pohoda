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
        invoice_header =
          { invoice_type: 'issuedInvoice',
            number: { number_requested: '2016001938' },
            number_order: '2016001748',
            date_order: '2014-10-02',
            sym_var: '2016001938',
            date: '2016-10-17',
            date_tax: '2016-10-17',
            date_due: '2016-10-31',
            date_accounting: '2014-10-14',
            classification_vat: { classification_vat_type: 'inland' },
            accounting: { ids: '3FV' },
            text: 'Faktura za zboží s adresou bez vazby na Adresář',
            partner_identity: {
              id: 25,
              ext_id: { ids: 'EXT-001', ex_system_name: 'Externi system' },
              address: {
                company: 'firma',
                division: 'Obchodní oddělení',
                name: 'John Doe',
                city: 'Písečná',
                street: 'Studený Zejf 7',
                zip: '79082',
                ico: '789456',
                dic: 'CZ789456',
                country: { ids: 'CZE' }
              },
              ship_to_address: {
                name: 'Soukop Bohumil',
                city: 'Praha',
                street: 'Nová 1475'
              }
            },
            payment_type: { ids: 'Master Card', payment_type: 'draft' },
            payment_account: { account_no: '1071743463', bank_code: '2700' },
            account: { account_no: '1117780287', bank_code: '0300', ids: 'KB' },
            note: 'Načteno z XML',
            int_note: 'Tento doklad byl vytvořen importem přes XML.',
            centre: { ids: 'BRNO' },
            activity: { ids: 'SLUŽBY' },
            contract: { ids: '10Zak00002' }
        }

        item1 =
          { text: 'Perla přání',
            quantity: 3,
            unit: 'ks',
            pay_vat: 'false',
            rate_vat: 'high',
            code: 83,
            guarantee: '48',
            guarantee_type: 'month',
            home_currency: { unit_price: 164.46, price: 493.39, price_vat: 103.61, price_sum: 2381.28 },
            foreign_currency: { unit_price: '1000'},
            stock_item: { store: { ids: 'Sklad' }, stock_item: { ids: '83' } }}
        item2 =
          { link: { source_agenda: 'receivedOrder', source_item_id: '8' } }
        payment1 = { quantity: '1.0',
                     pay_vat: 'false',
                     rate_vat: 'none',
                     home_currency: {
                       unit_price: -1000,
                       price: -1000,
                       price_vat: 0,
                       price_sum: -1000
                     },
                     source_document: { number: 150800001 }
        }
        invoice_detail = { items: [item1, item2], advance_payments: [payment1] }

        invoice_summary = {
          rounding_document: 'math2one',
          rounding_vat: 'noneEveryRate',
          home_currency: {
            price_high_sum: 715,
            price_none: '100',
            price_low: '200',
            round: { price_round: 0 } },
          foreign_currency: { currency: { ids: 'EUR'},
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
        nokogiri = Nokogiri::XML(File.read('spec/fixtures/complete_invoice.xml')).at_xpath('//inv:invoice')
        inv = Pohoda::InvoiceType.new nokogiri

        builder = Pohoda::Builder::InvoiceType.new(inv.to_h)

        expect(builder.to_xml).to be_equivalent_to nokogiri.to_xml
      end

      it 'returned string is valid against invoice XSD' do
        errors = schema.validate(builder.doc)
        errors.each { |e| puts e }
        expect(errors.size).to eq 0
      end
    end
  end
end
