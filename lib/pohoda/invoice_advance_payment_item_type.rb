module Pohoda
  class InvoiceAdvancePaymentItemType
    include BaseElement

    def id
      t 'inv:id'
    end

    def source_document
      SourceDocumentType.new(e 'inv:sourceDocument')
    end

    def quantity
      t 'inv:quantity'
    end

    def pay_vat
      t 'inv:payVAT'
    end

    def rate_vat
      t 'inv:rateVAT'
    end

    def percent_vat
      t 'inv:percentVAT'
    end

    def discount_percentage
      t 'inv:discountPercentage'
    end

    def home_currency
      TypeCurrencyHomeItem2.new(e 'inv:homeCurrency')
    end

    def foreign_currency
      TypeCurrencyHomeItem2.new(e 'inv:foreignCurrency')
    end

    def note
      t 'inv:note'
    end

    def accounting
      RefType.new(e 'inv:accounting')
    end

    def classification_vat
      t 'inv:classificationVAT'
    end

    def classification_kvdph
      t 'inv:classificationKVDPH'
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

    def voucher_eet
      StockItemType.new(e 'inv:voucherEET')
    end

    def to_h
      { id: id,
        source_document: source_document.to_h,
        quantity: quantity,
        pay_vat: pay_vat,
        rate_vat: rate_vat,
        percent_vat: percent_vat,
        discount_percentage: discount_percentage,
        home_currency: home_currency.to_h,
        foreign_currency: foreign_currency.to_h,
        note: note,
        accounting: accounting.to_h,
        classification_vat: classification_vat,
        classification_kvdph: classification_kvdph,
        centre: centre.to_h,
        activity: activity.to_h,
        contract: contract.to_h,
        voucher_eet: voucher_eet }
    end
  end
end
