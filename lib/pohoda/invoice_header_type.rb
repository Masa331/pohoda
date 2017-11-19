require "pohoda/base_element"
require "pohoda/ext_id_type"
require "pohoda/number"
require "pohoda/accounting"
require "pohoda/classification_vat_type"
require "pohoda/ref_type"
require "pohoda/partner_identity"
require "pohoda/my_address"
require "pohoda/payment_type"
require "pohoda/account_type"
require "pohoda/payment_account"
require 'pohoda/ref_type_reg_vat_in_eu'
require "pohoda/moss_type"
require "pohoda/resources_moss_type"

module Pohoda
  class InvoiceHeaderType
    include BaseElement

    def id
      text_at 'id'
    end

    def ext_id
      element_xml = at_xpath 'extId'

      ExtIdType.new(element_xml) if element_xml
    end

    def invoice_type
      text_at 'invoiceType'
    end

    def storno
      text_at 'storno'
    end

    def sphere_type
      text_at 'sphereType'
    end

    def number
      element_xml = at_xpath 'number'

      Number.new(element_xml) if element_xml
    end

    def sym_var
      text_at 'symVar'
    end

    def sym_par
      text_at 'symPar'
    end

    def original_document
      text_at 'originalDocument'
    end

    def original_document_number
      text_at 'originalDocumentNumber'
    end

    def date
      text_at 'date'
    end

    def date_tax
      text_at 'dateTax'
    end

    def date_accounting
      text_at 'dateAccounting'
    end

    def date_khdph
      text_at 'dateKHDPH'
    end

    def date_due
      text_at 'dateDue'
    end

    def date_application_vat
      text_at 'dateApplicationVAT'
    end

    def date_delivery
      text_at 'dateDelivery'
    end

    def accounting
      element_xml = at_xpath 'accounting'

      Accounting.new(element_xml) if element_xml
    end

    def classification_vat
      element_xml = at_xpath 'classificationVAT'

      ClassificationVatType.new(element_xml) if element_xml
    end

    def classification_kvdph
      element_xml = at_xpath 'classificationKVDPH'

      RefType.new(element_xml) if element_xml
    end

    def number_khdph
      text_at 'numberKHDPH'
    end

    def number_kvdph
      text_at 'numberKVDPH'
    end

    def text
      text_at 'text'
    end

    def partner_identity
      element_xml = at_xpath 'partnerIdentity'

      PartnerIdentity.new(element_xml) if element_xml
    end

    def my_identity
      element_xml = at_xpath 'myIdentity'

      MyAddress.new(element_xml) if element_xml
    end

    def order
      element_xml = at_xpath 'order'

      RefType.new(element_xml) if element_xml
    end

    def number_order
      text_at 'numberOrder'
    end

    def date_order
      text_at 'dateOrder'
    end

    def price_level
      element_xml = at_xpath 'priceLevel'

      RefType.new(element_xml) if element_xml
    end

    def payment_type
      element_xml = at_xpath 'paymentType'

      PaymentType.new(element_xml) if element_xml
    end

    def account
      element_xml = at_xpath 'account'

      AccountType.new(element_xml) if element_xml
    end

    def sym_const
      text_at 'symConst'
    end

    def sym_spec
      text_at 'symSpec'
    end

    def payment_account
      element_xml = at_xpath 'paymentAccount'

      PaymentAccount.new(element_xml) if element_xml
    end

    def payment_terminal
      text_at 'paymentTerminal'
    end

    def centre
      element_xml = at_xpath 'centre'

      RefType.new(element_xml) if element_xml
    end

    def activity
      element_xml = at_xpath 'activity'

      RefType.new(element_xml) if element_xml
    end

    def contract
      element_xml = at_xpath 'contract'

      RefType.new(element_xml) if element_xml
    end

    def reg_vat_in_eu
      element_xml = at_xpath 'regVATinEU'

      RefTypeRegVatInEU.new(element_xml) if element_xml
    end

    def moss
      element_xml = at_xpath 'MOSS'

      MOSSType.new(element_xml) if element_xml
    end

    def evidentiary_resources_moss
      element_xml = at_xpath 'evidentiaryResourcesMOSS'

      ResourcesMOSSType.new(element_xml) if element_xml
    end

    def accounting_period_moss
      text_at 'accountingPeriodMOSS'
    end

    def carrier
      element_xml = at_xpath 'carrier'

      RefType.new(element_xml) if element_xml
    end

    def note
      text_at 'note'
    end

    def int_note
      text_at 'intNote'
    end

    def to_h
      { id: id,
        ext_id: ext_id.to_h,
        invoice_type: invoice_type,
        storno: storno,
        sphere_type: sphere_type,
        number: number.to_h,
        sym_var: sym_var,
        sym_par: sym_par,
        original_document: original_document,
        original_document_number: original_document_number,
        date: date,
        date_tax: date_tax,
        date_accounting: date_accounting,
        date_khdph: date_khdph,
        date_due: date_due,
        date_application_vat: date_application_vat,
        date_delivery: date_delivery,
        accounting: accounting.to_h,
        classification_vat: classification_vat.to_h,
        classification_kvdph: classification_kvdph.to_h,
        number_khdph: number_khdph,
        number_kvdph: number_kvdph,
        text: text,
        partner_identity: partner_identity.to_h,
        my_identity: my_identity.to_h,
        order: order.to_h,
        number_order: number_order,
        date_order: date_order,
        price_level: price_level.to_h,
        payment_type: payment_type.to_h,
        account: account.to_h,
        sym_const: sym_const,
        sym_spec: sym_spec,
        payment_account: payment_account.to_h,
        payment_terminal: payment_terminal,
        centre: centre.to_h,
        activity: activity.to_h,
        contract: contract.to_h,
        reg_vat_in_eu: reg_vat_in_eu.to_h,
        moss: moss.to_h,
        evidentiary_resources_moss: evidentiary_resources_moss.to_h,
        accounting_period_moss: accounting_period_moss,
        carrier: carrier.to_h,
        note: note,
        int_note: int_note }
    end
  end
end
