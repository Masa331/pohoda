require 'spec_helper'

RSpec.describe Pohoda::InvoiceType do
  context 'invoice with no data' do
    let(:xml) { xml_invoice('blank_invoice.xml') }
    subject(:invoice) { Pohoda::InvoiceType.new(xml) }

    its(:links) { is_expected.to eq [] }
    its('invoice_header.id') { is_expected.to eq '' }

    its('invoice_header.ext_id.ids') { is_expected.to eq '' }
    its('invoice_header.ext_id.ex_system_name') { is_expected.to eq '' }
    its('invoice_header.ext_id.ex_system_text') { is_expected.to eq '' }

    its('invoice_header.invoice_type') { is_expected.to eq '' }
    its('invoice_header.sphere_type') { is_expected.to eq '' }

    its('invoice_header.number.id') { is_expected.to eq '' }
    its('invoice_header.number.ids') { is_expected.to eq '' }
    its('invoice_header.number.number_requested') { is_expected.to eq '' }

    its('invoice_header.sym_var') { is_expected.to eq '' }
    its('invoice_header.sym_par') { is_expected.to eq '' }
    its('invoice_header.date') { is_expected.to eq '' }
    its('invoice_header.date_tax') { is_expected.to eq '' }
    its('invoice_header.date_accounting') { is_expected.to eq '' }
    its('invoice_header.date_khdph') { is_expected.to eq '' }
    its('invoice_header.date_due') { is_expected.to eq '' }
    its('invoice_header.date_application_vat') { is_expected.to eq '' }

    its('invoice_header.accounting.id') { is_expected.to eq '' }
    its('invoice_header.accounting.ids') { is_expected.to eq '' }
    its('invoice_header.accounting.accounting_type') { is_expected.to eq '' }

    its('invoice_header.classification_vat.id') { is_expected.to eq '' }
    its('invoice_header.classification_vat.ids') { is_expected.to eq '' }
    its('invoice_header.classification_vat.classification_vat_type') { is_expected.to eq '' }

    its('invoice_header.number_khdph') { is_expected.to eq '' }
    its('invoice_header.text') { is_expected.to eq '' }
    let('invoice_header.partner') { i.partner_identity }
    its('invoice_header.id') { is_expected.to eq '' }

    its('invoice_header.partner_identity.ext_id.ids') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ext_id.ex_system_name') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ext_id.ex_system_text') { is_expected.to eq '' }

    its('invoice_header.partner_identity.address.company') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.division') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.name') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.city') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.street') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.zip') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.ico') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.dic') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.ic_dph') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.phone') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.mobile_phone') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.fax') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.email') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.country.id') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.country.ids') { is_expected.to eq '' }
    its('invoice_header.partner_identity.address.country.value_type') { is_expected.to eq '' }

    its('invoice_header.partner_identity.ship_to_address.id') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.company') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.division') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.name') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.city') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.street') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.zip') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.phone') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.email') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.default_ship_to_address') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.country.id') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.country.ids') { is_expected.to eq '' }
    its('invoice_header.partner_identity.ship_to_address.country.value_type') { is_expected.to eq '' }

    its('invoice_header.my_identity.address.company') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.title') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.surname') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.name') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.city') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.street') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.number') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.zip') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.ico') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.dic') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.ic_dph') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.phone') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.mobile_phone') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.fax') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.email') { is_expected.to eq '' }
    its('invoice_header.my_identity.address.www') { is_expected.to eq '' }

    its('invoice_header.my_identity.establishment.company') { is_expected.to eq '' }
    its('invoice_header.my_identity.establishment.city') { is_expected.to eq '' }
    its('invoice_header.my_identity.establishment.street') { is_expected.to eq '' }
    its('invoice_header.my_identity.establishment.zip') { is_expected.to eq '' }

    its('invoice_header.order.id') { is_expected.to eq '' }
    its('invoice_header.order.ids') { is_expected.to eq '' }
    its('invoice_header.order.value_type') { is_expected.to eq '' }

    its('invoice_header.number_order') { is_expected.to eq '' }
    its('invoice_header.date_order') { is_expected.to eq '' }

    its('invoice_header.price_level.id') { is_expected.to eq '' }
    its('invoice_header.price_level.ids') { is_expected.to eq '' }
    its('invoice_header.price_level.value_type') { is_expected.to eq '' }

    its('invoice_header.payment_type.id') { is_expected.to eq '' }
    its('invoice_header.payment_type.ids') { is_expected.to eq '' }
    its('invoice_header.payment_type.payment_type') { is_expected.to eq '' }

    its('invoice_header.account.id') { is_expected.to eq '' }
    its('invoice_header.account.ids') { is_expected.to eq '' }
    its('invoice_header.account.account_no') { is_expected.to eq '' }
    its('invoice_header.account.bank_code') { is_expected.to eq '' }

    its('invoice_header.sym_const') { is_expected.to eq '' }
    its('invoice_header.sym_spec') { is_expected.to eq '' }
    its('invoice_header.payment_terminal') { is_expected.to eq '' }

    its('invoice_header.payment_account.account_no') { is_expected.to eq '' }
    its('invoice_header.payment_account.bank_code') { is_expected.to eq '' }

    its('invoice_header.centre.id') { is_expected.to eq '' }
    its('invoice_header.centre.ids') { is_expected.to eq '' }
    its('invoice_header.centre.value_type') { is_expected.to eq '' }

    its('invoice_header.activity.id') { is_expected.to eq '' }
    its('invoice_header.activity.ids') { is_expected.to eq '' }
    its('invoice_header.activity.value_type') { is_expected.to eq '' }

    its('invoice_header.contract.id') { is_expected.to eq '' }
    its('invoice_header.contract.ids') { is_expected.to eq '' }
    its('invoice_header.contract.value_type') { is_expected.to eq '' }

    its('invoice_header.reg_vat_in_eu.id') { is_expected.to eq '' }
    its('invoice_header.reg_vat_in_eu.ids') { is_expected.to eq '' }

    its('invoice_header.moss') { is_expected.to eq '' }
    its('invoice_header.evidentiary_resource_moss') { is_expected.to eq '' }
    its('invoice_header.accounting_period_moss') { is_expected.to eq '' }

    its('invoice_header.carrier.id') { is_expected.to eq '' }
    its('invoice_header.carrier.ids') { is_expected.to eq '' }
    its('invoice_header.carrier.value_type') { is_expected.to eq '' }

    its('invoice_header.note') { is_expected.to eq '' }
    its('invoice_header.int_note') { is_expected.to eq '' }

    its('invoice_detail.items') { is_expected.to eq [] }
    its('invoice_detail.advance_payments') { is_expected.to eq [] }

    its('invoice_summary.rounding_document') { is_expected.to eq '' }
    its('invoice_summary.rounding_vat') { is_expected.to eq '' }
    its('invoice_summary.calculate_vat') { is_expected.to eq '' }

    its('invoice_summary.home_currency.price_none') { is_expected.to eq '' }
    its('invoice_summary.home_currency.price_low') { is_expected.to eq '' }
    its('invoice_summary.home_currency.price_low_vat') { is_expected.to eq '' }
    its('invoice_summary.home_currency.price_low_sum') { is_expected.to eq '' }

    its('invoice_summary.home_currency.price_high') { is_expected.to eq '' }
    its('invoice_summary.home_currency.price_high_vat') { is_expected.to eq '' }
    its('invoice_summary.home_currency.price_high_sum') { is_expected.to eq '' }

    its('invoice_summary.home_currency.price_3') { is_expected.to eq '' }
    its('invoice_summary.home_currency.price_3_vat') { is_expected.to eq '' }
    its('invoice_summary.home_currency.price_3_sum') { is_expected.to eq '' }

    its('invoice_summary.home_currency.round.price_round') { is_expected.to eq '' }

    its('invoice_summary.foreign_currency.currency.id') { is_expected.to eq '' }
    its('invoice_summary.foreign_currency.currency.ids') { is_expected.to eq '' }
    its('invoice_summary.foreign_currency.currency.value_type') { is_expected.to eq '' }

    its('invoice_summary.foreign_currency.rate') { is_expected.to eq '' }
    its('invoice_summary.foreign_currency.amount') { is_expected.to eq '' }
    its('invoice_summary.foreign_currency.price_sum') { is_expected.to eq '' }

    it '#to_h' do
      hsh =
        { links: [],
         invoice_header: {
          id: '',
          ext_id: { ids: '', ex_system_name: '', ex_system_text: '' },
          invoice_type: '',
          storno: '',
          sphere_type: '',
          number: { id: '', ids: '', number_requested: '' },
          sym_var: '',
          sym_par: '',
          date: '',
          date_tax: '',
          date_accounting: '',
          date_khdph: '',
          date_due: '',
          date_application_vat: '',
          accounting: { id: '', ids: '', accounting_type: '' },
          classification_vat: { id: '', ids: '', classification_vat_type: '' },
          number_khdph: '',
          text: '',
          partner_identity: {
            id: '',
            ext_id: { ids: '', ex_system_name: '', ex_system_text: '' },
            address: {
              company: '',
              name: '',
              division: '',
              street: '',
              city: '',
              zip: '',
              ico: '',
              dic: '',
              ic_dph: '',
              country: { id: '', ids: '', value_type: '' },
              phone: '',
              mobile_phone: '',
              fax: '',
              email: ''
            },
            ship_to_address: { id: '',
                               company: '',
                               division: '',
                               name: '',
                               city: '',
                               street: '',
                               zip: '',
                               country: { id: '', ids: '', value_type: '' },
                               phone: '',
                               email: '',
                               default_ship_to_address: '' }
          },
          my_identity: { address: { company: '',
                                    title: '',
                                    surname: '',
                                    name: '',
                                    city: '',
                                    street: '',
                                    number: '',
                                    zip: '',
                                    ico: '',
                                    dic: '',
                                    ic_dph: '',
                                    phone: '',
                                    mobile_phone: '',
                                    fax: '',
                                    email: '',
                                    www: ''
          },
          establishment: { company: '',
                           city: '',
                           street: '',
                           zip: ''
          }},
          order: { id: '', ids: '', value_type: '' },
          number_order: '',
          date_order: '',
          price_level: { id: '', ids: '', value_type: '' },
          payment_type: { id: '', ids: '', payment_type: '' },
          account: { id: '', ids: '', account_no: '', bank_code: '' },
          sym_const: '',
          sym_spec: '',
          payment_account: { account_no: '', bank_code: '' },
          payment_terminal: '',
          centre: { id: '', ids: '', value_type: '' },
          activity: { id: '', ids: '', value_type: '' },
          contract: { id: '', ids: '', value_type: '' },
          reg_vat_in_eu: { id: '', ids: '', value_type: '' },
          moss: '',
          evidentiary_resource_moss: '',
          accounting_period_moss: '',
          carrier: { id: '', ids: '', value_type: '' },
          note: '',
          int_note: '',
      }, invoice_detail: {
          items: [],
          advance_payments: []
          },
          invoice_summary: {
          rounding_document: '',
          rounding_vat: '',
          calculate_vat: '',
          home_currency: { price_none: '',
                           price_low: '',
                           price_low_vat: '',
                           price_low_sum: '',
                           price_high: '',
                           price_high_vat: '',
                           price_high_sum: '',
                           price_3: '',
                           price_3_vat: '',
                           price_3_sum: '',
                           round: { price_round: '' } },
          foreign_currency: { currency: { id: '', ids: '', value_type: '' },
                              rate: '', amount: '', price_sum: '' }
          }
      }

      expect(invoice.to_h).to match(hsh)
    end
  end
end
