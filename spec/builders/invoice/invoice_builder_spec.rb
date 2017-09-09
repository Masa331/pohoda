require 'spec_helper'

RSpec.describe Pohoda::Builder::Invoice do
  describe '#to_xml' do
    let(:schema) { Nokogiri::XML::Schema(File.read('spec/fixtures/pohoda_xsd/invoice.xsd')) }

    context 'blank invoice' do
      let(:builder) { Pohoda::Builder::Invoice.new }

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/invoice/blank_invoice.xml')

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
        { invoice_type: 'issuedInvoice',
          number: { number_requested: '2016001938' },
          number_order: '2016001748',
          sym_var: '2016001938',
          date: '2016-10-17',
          date_tax: '2016-10-18',
          date_due: '2016-10-31',
          rounding_document: 'math2one',
          partner_identity: {
            address: {
              name: 'John Doe',
              city: 'Písečná',
              street: 'Studený Zejf 7',
              zip: '79082',
              country: { ids: 'CZE' },
            }
          },
          items: [{ text: 'Perla přání',
                    quantity: 3,
                    unit: 'ks',
                    pay_vat: 'false',
                    rate_vat: 'high',
                    code: 83,
                    home_currency: { unit_price: 164.46,
                                     price: 493.39,
                                     price_vat: 103.61 } }
          ],
          home_currency: { price_high_sum: 715,
                           round: { price_round: 0 } }
        }
      end

      let(:builder) do
        Pohoda::Builder::Invoice.new(attributes)
      end

      it 'retuns xml string' do
        expected_output = File.read('spec/builders/invoice/basic_invoice.xml')

        expect(builder.to_xml.gsub(/\s+/, '')).to eq expected_output.gsub(/\s+/, '')
      end

      it 'returned string is valid against invoice XSD' do
        errors = schema.validate(builder.doc)
        errors.each { |e| puts e }
        expect(errors.size).to eq 0
      end
    end
  end
end
