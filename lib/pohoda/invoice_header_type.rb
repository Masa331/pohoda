module Pohoda
  class InvoiceHeader
    include BaseElement

    def id
      t 'inv:id'
    end

    def ext_id
      ExtIdType.new(e 'inv:extId')
    end

    def invoice_type
      t 'inv:invoiceType'
    end

    def storno
      t 'inv:storno'
    end

    def sphere_type
      t 'inv:sphereType'
    end

    def number
      Number.new(e 'inv:number')
    end

    def sym_var
      t 'inv:symVar'
    end

    def sym_par
      t 'inv:symPar'
    end

    def original_document
      t 'inv:originalDocument'
    end

    def original_document_number
      t 'inv:originalDocumentNumber'
    end

    def date
      t 'inv:date'
    end

    def date_tax
      t 'inv:dateTax'
    end

    def date_accounting
      t 'inv:dateAccounting'
    end

    def date_khdph
      t 'inv:dateKHDPH'
    end

    def date_due
      t 'inv:dateDue'
    end

    def date_application_vat
      t 'inv:dateApplicationVAT'
    end

    def date_delivery
      t 'inv:dateDelivery'
    end

    def accounting
      Accounting.new(e 'inv:accounting')
    end

    def classification_vat
      ClassificationVatType.new(e 'inv:classificationVAT')
    end

    def classification_kvdph
      RefType.new(e 'inv:classificationKVDPH')
    end

    def number_khdph
      t 'inv:numberKHDPH'
    end

    def number_kvdph
      t 'inv:numberKVDPH'
    end

    def text
      t 'inv:text'
    end

    def partner_identity
      PartnerIdentity.new(e 'inv:partnerIdentity')
    end

    def my_identity
      MyAddress.new(e 'inv:myIdentity')
    end

    def order
      RefType.new(e 'inv:order')
    end

    def number_order
      t 'inv:numberOrder'
    end

    def date_order
      t 'inv:dateOrder'
    end

    def price_level
      RefType.new(e 'inv:priceLevel')
    end

    def payment_type
      PaymentType.new(e 'inv:paymentType')
    end

    def account
      AccountType.new(e 'inv:account')
    end

    def sym_const
      t 'inv:symConst'
    end

    def sym_spec
      t 'inv:symSpec'
    end

    def payment_account
      PaymentAccount.new(e 'inv:paymentAccount')
    end

    def payment_terminal
      t 'inv:paymentTerminal'
    end

    def centre
      RefType.new(e 'inv:centre')
    end

    def activity
      RefType.new(e 'inv:activity')
    end

    def contract
      RefType.new(e 'inv:contract')
    end

    def reg_vat_in_eu
      RefTypeRegVatInEU.new(e 'inv:regVATinEU')
    end

    def moss
      MOSSType.new(e 'inv:MOSS')
    end

    def evidentiary_resources_moss
      ResourcesMOSSType.new(e 'inv:evidentiaryResourcesMOSS')
    end

    def accounting_period_moss
      t 'inv:accountingPeriodMOSS'
    end

    def carrier
      RefType.new(e 'inv:carrier')
    end

    def note
      t 'inv:note'
    end

    def int_note
      t 'inv:intNote'
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
