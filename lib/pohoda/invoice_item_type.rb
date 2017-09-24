module Pohoda
  class InvoiceItemType
    include BaseElement

    def link
      LinkItemType.new(e 'inv:link')
    end

    def id
      t 'inv:id'
    end

    def text
      t 'inv:text'
    end

    def quantity
      t 'inv:quantity'
    end

    def unit
      t 'inv:unit'
    end

    def coefficient
      t 'inv:coefficient'
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

    def code
      t 'inv:code'
    end

    def guarantee
      t 'inv:guarantee'
    end

    def guarantee_type
      t 'inv:guaranteeType'
    end

    def note
      t 'inv:note'
    end

    def home_currency
      TypeCurrencyHomeItem.new(e 'inv:homeCurrency')
    end

    def foreign_currency
      TypeCurrencyForeignItem.new(e 'inv:foreignCurrency')
    end

    def stock_item
      StockItemType.new(e 'inv:stockItem')
    end

    def accounting
      RefType.new(e 'inv:accounting')
    end

    def classification_vat
      ClassificationVatType.new(e 'inv:classificationVAT')
    end

    def classification_kvdph
      RefType.new(e 'inv:classificationKVDPH')
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

    def expiration_date
      t 'inv:expirationDate'
    end

    def to_h
      { link: link.to_h,
        id: id,
        text: text,
        quantity: quantity,
        unit: unit,
        coefficient: coefficient,
        pay_vat: pay_vat,
        rate_vat: rate_vat,
        percent_vat: percent_vat,
        discount_percentage: discount_percentage,
        stock_item: stock_item.to_h,
        note: note,
        code: code,
        guarantee: guarantee,
        guarantee_type: guarantee_type,
        home_currency: home_currency.to_h,
        accounting: accounting.to_h,
        classification_vat: classification_vat.to_h,
        classification_kvdph: classification_kvdph.to_h,
        centre: centre.to_h,
        activity: activity.to_h,
        contract: contract.to_h,
        foreign_currency: foreign_currency.to_h,
        expiration_date: expiration_date }
    end
  end
end
