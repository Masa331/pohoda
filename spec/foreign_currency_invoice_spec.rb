require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  context 'invoice with foreign currency' do
    subject(:invoice) { Pohoda::InvoiceType.new(xml_invoice('foreign_currency_invoice.xml')) }

    its(:rounding_vat) { is_expected.to eq 'noneEveryRate' }
    its('foreign_currency.currency.ids') { is_expected.to eq 'EUR' }
    its('foreign_currency.rate') { is_expected.to eq '21.232' }
    its('foreign_currency.amount') { is_expected.to eq '1' }
    its('foreign_currency.price_sum') { is_expected.to eq '580' }


    describe 'items' do
      subject(:item) { invoice.items.first }

      its('foreign_currency.unit_price') { is_expected.to eq '1000' }
    end

    it '#to_h' do
      expect(invoice.to_h).to include({ rounding_vat: 'noneEveryRate' })

      foreign_currency_attrs = { rate: '21.232',
                                 amount: '1',
                                 currency: { id: '', ids: 'EUR', value_type: '' },
                                 price_sum: '580' }
      expect(invoice.to_h[:foreign_currency]).to include(foreign_currency_attrs)
    end
  end
end

