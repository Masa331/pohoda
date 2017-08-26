module Pohoda
  class Invoice
    include Utils

    attr_accessor :xml

    def initialize(xml)
      @xml = xml
    end

    def id
      t 'inv:invoiceHeader/inv:id'
    end

    def ext_id
      ExternalReference.new(e 'inv:invoiceHeader/inv:extId')
    end

    def invoice_type
      t 'inv:invoiceHeader/inv:invoiceType'
    end

    def storno
      t 'inv:invoiceHeader/inv:storno'
    end

    def sphere_type
      t 'inv:invoiceHeader/inv:sphereType'
    end

    def number
      Number.new(e 'inv:invoiceHeader/inv:number')
    end

    def sym_var
      t 'inv:invoiceHeader/inv:symVar'
    end

    def sym_par
      t 'inv:invoiceHeader/inv:symPar'
    end

    def date
      t 'inv:invoiceHeader/inv:date'
    end

    def date_tax
      t 'inv:invoiceHeader/inv:dateTax'
    end

    def date_accounting
      t 'inv:invoiceHeader/inv:dateAccounting'
    end

    def date_khdph
      t 'inv:invoiceHeader/inv:dateKHDPH'
    end

    def date_due
      t 'inv:invoiceHeader/inv:dateDue'
    end

    def date_application_vat
      t 'inv:invoiceHeader/inv:dateApplicationVAT'
    end

    # def date_delivery
    # end

    def accounting
      Accounting.new(e 'inv:invoiceHeader/inv:accounting')
    end

    def classification_vat
      ClassificationVat.new(e 'inv:invoiceHeader/inv:classificationVAT')
    end

    def number_khdph
      t 'inv:invoiceHeader/inv:numberKHDPH'
    end

    def text
      t 'inv:invoiceHeader/inv:text'
    end

    def partner_identity
      PartnerIdentity.new(e 'inv:invoiceHeader/inv:partnerIdentity')
    end

    def my_identity
      MyIdentity.new(e 'inv:invoiceHeader/inv:myIdentity')
    end

    def order
      Reference.new(e 'inv:invoiceHeader/inv:order')
    end

    def number_order
      t 'inv:invoiceHeader/inv:numberOrder'
    end

    def date_order
      t 'inv:invoiceHeader/inv:dateOrder'
    end

    def price_level
      Reference.new(e 'inv:invoiceHeader/inv:priceLevel')
    end

    def payment_type
      PaymentType.new(e 'inv:invoiceHeader/inv:paymentType')
    end

    def account
      Account.new(e 'inv:invoiceHeader/inv:account')
    end

    def sym_const
      t 'inv:invoiceHeader/inv:symConst'
    end

    def sym_spec
      t 'inv:invoiceHeader/inv:symSpec'
    end

    def payment_account
      PaymentAccount.new(e 'inv:invoiceHeader/inv:account')
    end

    def payment_terminal
      t 'inv:invoiceHeader/inv:paymentTerminal'
    end

    def centre
      Reference.new(e 'inv:invoiceHeader/inv:centre')
    end

    def activity
      Reference.new(e 'inv:invoiceHeader/inv:centre')
    end

    def contract
      Reference.new(e 'inv:invoiceHeader/inv:contract')
    end

    def reg_vat_in_eu
      Reference.new(e 'inv:invoiceHeader/inv:regVATinEU')
    end

    def moss
      t 'inv:invoiceHeader/inv:MOSS/typ:ids'
    end

    def evidentiary_resource_moss
      t 'inv:invoiceHeader/inv:evidentiaryResourcesMOSS/typ:ids'
    end

    def accounting_period_moss
      t 'inv:invoiceHeader/inv:accountingPeriodMOSS'
    end

    def carrier
      Reference.new(e 'inv:invoiceHeader/inv:carrier')
    end

    def note
      t 'inv:invoiceHeader/inv:note'
    end

    def int_note
      t 'inv:invoiceHeader/inv:intNote'
    end

    def items
      xml.xpath('inv:invoiceDetail/inv:invoiceItem').map { |i| InvoiceItem.new(i) }
    end

    def rounding_type
      t 'inv:invoiceSummary/inv:roundingDocument'
    end

    def vat_rounding_type
      t 'inv:invoiceSummary/inv:roundingVAT'
    end

    def vat_from_rounding
      t 'inv:invoiceSummary/inv:calculateVAT'
    end

    def type_currency_home
      TypeCurrencyHome.new(e 'inv:invoiceSummary/inv:homeCurrency')
    end

    def foreign_total
      ForeignTotal.new(e 'inv:invoiceSummary/inv:foreignCurrency')
    end
  end
end
