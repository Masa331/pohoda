require 'spec_helper'

RSpec.describe Pohoda::Invoice do
  context 'basic invoice' do
    let(:xml) { xml_invoice('blank_invoice.xml') }
    let(:i) { Pohoda::Invoice.new(xml) }

    it '#id' do
      expect(i.id).to eq ''
    end

    it '#ext_id' do
      expect(i.ext_id.ids).to eq ''
      expect(i.ext_id.ex_system_name).to eq ''
      expect(i.ext_id.ex_system_text).to eq ''
    end

    it '#invoice_type' do
      expect(i.invoice_type).to eq ''
    end

    it '#sphere_type' do
      expect(i.sphere_type).to eq ''
    end

    it '#number' do
      expect(i.number.id).to eq ''
      expect(i.number.ids).to eq ''
      expect(i.number.number_requested).to eq ''
    end

    it '#sym_var' do
      expect(i.sym_var).to eq ''
    end

    it '#sym_par' do
      expect(i.sym_par).to eq ''
    end

    it '#date' do
      expect(i.date).to eq ''
    end

    it '#date_tax' do
      expect(i.date_tax).to eq ''
    end

    it '#date_accounting' do
      expect(i.date_accounting).to eq ''
    end

    it '#date_khdph' do
      expect(i.date_khdph).to eq ''
    end

    it '#date_due' do
      expect(i.date_due).to eq ''
    end

    it '#date_application_vat' do
      expect(i.date_application_vat).to eq ''
    end

    it '#accounting' do
      expect(i.accounting.id).to eq ''
      expect(i.accounting.ids).to eq ''
      expect(i.accounting.accounting_type).to eq ''
    end

    it '#classification_vat' do
      expect(i.classification_vat.id).to eq ''
      expect(i.classification_vat.ids).to eq ''
      expect(i.classification_vat.classification_vat_type).to eq ''
    end

    it '#number_khdph' do
      expect(i.number_khdph).to eq ''
    end

    it '#text' do
      expect(i.text).to eq ''
    end

    describe '#partner_identity' do
      let(:partner) { i.partner_identity }

      it '#id' do
        expect(partner.id).to eq ''
      end

      it '#external_reference' do
        expect(partner.ext_id.ids).to eq ''
        expect(partner.ext_id.ex_system_name).to eq ''
        expect(partner.ext_id.ex_system_text).to eq ''
      end

      it '#address' do
        expect(partner.address.company).to eq ''
        expect(partner.address.division).to eq ''
        expect(partner.address.name).to eq ''
        expect(partner.address.city).to eq ''
        expect(partner.address.street).to eq ''
        expect(partner.address.zip).to eq ''
        expect(partner.address.ico).to eq ''
        expect(partner.address.dic).to eq ''
        expect(partner.address.ic_dph).to eq ''
        expect(partner.address.phone).to eq ''
        expect(partner.address.mobile_phone).to eq ''
        expect(partner.address.fax).to eq ''
        expect(partner.address.email).to eq ''

        expect(partner.address.country.id).to eq ''
        expect(partner.address.country.ids).to eq ''
        expect(partner.address.country.value_type).to eq ''
      end

      it '#ship_to_address' do
        expect(partner.ship_to_address.id).to eq ''
        expect(partner.ship_to_address.company).to eq ''
        expect(partner.ship_to_address.division).to eq ''
        expect(partner.ship_to_address.name).to eq ''
        expect(partner.ship_to_address.city).to eq ''
        expect(partner.ship_to_address.street).to eq ''
        expect(partner.ship_to_address.zip).to eq ''
        expect(partner.ship_to_address.phone).to eq ''
        expect(partner.ship_to_address.email).to eq ''
        expect(partner.ship_to_address.default_ship_to_address).to eq ''

        expect(partner.ship_to_address.country.id).to eq ''
        expect(partner.ship_to_address.country.ids).to eq ''
        expect(partner.ship_to_address.country.value_type).to eq ''
      end
    end

    describe '#my_identity' do
      it '#address' do
        expect(i.my_identity.address.company).to eq ''
        expect(i.my_identity.address.title).to eq ''
        expect(i.my_identity.address.surname).to eq ''
        expect(i.my_identity.address.name).to eq ''
        expect(i.my_identity.address.city).to eq ''
        expect(i.my_identity.address.street).to eq ''
        expect(i.my_identity.address.number).to eq ''
        expect(i.my_identity.address.zip).to eq ''
        expect(i.my_identity.address.ico).to eq ''
        expect(i.my_identity.address.dic).to eq ''
        expect(i.my_identity.address.ic_dph).to eq ''
        expect(i.my_identity.address.phone).to eq ''
        expect(i.my_identity.address.mobile_phone).to eq ''
        expect(i.my_identity.address.fax).to eq ''
        expect(i.my_identity.address.email).to eq ''
        expect(i.my_identity.address.www).to eq ''
      end

      it '#establishment' do
        expect(i.my_identity.establishment.company).to eq ''
        expect(i.my_identity.establishment.city).to eq ''
        expect(i.my_identity.establishment.street).to eq ''
        expect(i.my_identity.establishment.zip).to eq ''
      end
    end

    it '#order' do
      expect(i.order.id).to eq ''
      expect(i.order.ids).to eq ''
      expect(i.order.value_type).to eq ''
    end

    it '#number_order' do
      expect(i.number_order).to eq ''
    end

    it '#date_order' do
      expect(i.date_order).to eq ''
    end

    it '#price_level' do
      expect(i.price_level.id).to eq ''
      expect(i.price_level.ids).to eq ''
      expect(i.price_level.value_type).to eq ''
    end

    it '#payment_type' do
      expect(i.payment_type.id).to eq ''
      expect(i.payment_type.ids).to eq ''
      expect(i.payment_type.payment_type).to eq ''
    end

    it '#account_type' do
      expect(i.account.id).to eq ''
      expect(i.account.ids).to eq ''
      expect(i.account.account_no).to eq ''
      expect(i.account.bank_code).to eq ''
    end

    it '#sym_const' do
      expect(i.sym_const).to eq ''
    end

    it '#sym_spec' do
      expect(i.sym_spec).to eq ''
    end

    it '#payment_terminal' do
      expect(i.payment_terminal).to eq ''
    end

    it '#payment_account' do
      expect(i.payment_account.account_no).to eq ''
      expect(i.payment_account.bank_code).to eq ''
    end

    it '#centre' do
      expect(i.centre.id).to eq ''
      expect(i.centre.ids).to eq ''
      expect(i.centre.value_type).to eq ''
    end

    it '#activity' do
      expect(i.activity.id).to eq ''
      expect(i.activity.ids).to eq ''
      expect(i.activity.value_type).to eq ''
    end

    it '#contract' do
      expect(i.contract.id).to eq ''
      expect(i.contract.ids).to eq ''
      expect(i.contract.value_type).to eq ''
    end

    it '#reg_vat_in_eu' do
      expect(i.reg_vat_in_eu.id).to eq ''
      expect(i.reg_vat_in_eu.ids).to eq ''
    end

    it '#moss' do
      expect(i.moss).to eq ''
    end

    it '#evidentiary_resource_moss' do
      expect(i.evidentiary_resource_moss).to eq ''
    end

    it '#accounting_period_moss' do
      expect(i.accounting_period_moss).to eq ''
    end

    it '#carrier' do
      expect(i.carrier.id).to eq ''
      expect(i.carrier.ids).to eq ''
      expect(i.carrier.value_type).to eq ''
    end

    it '#note' do
      expect(i.note).to eq ''
    end

    it '#int_note' do
      expect(i.int_note).to eq ''
    end

    it '#items' do
      expect(i.items).to eq []
    end

    it '#rounding_document' do
      expect(i.rounding_document).to eq ''
    end

    it '#rounding_vat' do
      expect(i.rounding_vat).to eq ''
    end

    it '#calculate_vat' do
      expect(i.calculate_vat).to eq ''
    end

    it '#home_currency' do
      expect(i.home_currency.price_none).to eq ''

      expect(i.home_currency.price_low).to eq ''
      expect(i.home_currency.price_low_vat).to eq ''
      expect(i.home_currency.price_low_sum).to eq ''

      expect(i.home_currency.price_high).to eq ''
      expect(i.home_currency.price_high_vat).to eq ''
      expect(i.home_currency.price_high_sum).to eq ''

      expect(i.home_currency.price_3).to eq ''
      expect(i.home_currency.price_3_vat).to eq ''
      expect(i.home_currency.price_3_sum).to eq ''

      expect(i.home_currency.round.price_round).to eq ''
    end

    it '#foreign_currency' do
      expect(i.foreign_currency.currency.id).to eq ''
      expect(i.foreign_currency.currency.ids).to eq ''
      expect(i.foreign_currency.currency.value_type).to eq ''

      expect(i.foreign_currency.rate).to eq ''
      expect(i.foreign_currency.amount).to eq ''
      expect(i.foreign_currency.price_sum).to eq ''
    end

    it '#to_h' do
      hsh =
        { id: '',
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
          items: [],
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

      expect(i.to_h).to match(hsh)
    end
  end
end
