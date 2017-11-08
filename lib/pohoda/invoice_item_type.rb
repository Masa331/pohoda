module Pohoda
  class InvoiceItemType
    include BaseElement

    def link
      element_xml = at_xpath 'inv:link'

      LinkItemType.new(element_xml) if element_xml
    end

    def id
      text_at 'inv:id'
    end

    def text
      text_at 'inv:text'
    end

    def quantity
      text_at 'inv:quantity'
    end

    def unit
      text_at 'inv:unit'
    end

    def coefficient
      text_at 'inv:coefficient'
    end

    def pay_vat
      text_at 'inv:payVAT'
    end

    def rate_vat
      text_at 'inv:rateVAT'
    end

    def percent_vat
      text_at 'inv:percentVAT'
    end

    def discount_percentage
      text_at 'inv:discountPercentage'
    end

    def code
      text_at 'inv:code'
    end

    def guarantee
      text_at 'inv:guarantee'
    end

    def guarantee_type
      text_at 'inv:guaranteeType'
    end

    def note
      text_at 'inv:note'
    end

    def home_currency
      element_xml = at_xpath 'inv:homeCurrency'

      TypeCurrencyHomeItem.new(element_xml) if element_xml
    end

    def foreign_currency
      element_xml = at_xpath 'inv:foreignCurrency'

      TypeCurrencyForeignItem.new(element_xml) if element_xml
    end

    def stock_item
      element_xml = at_xpath 'inv:stockItem'

      StockItemType.new(element_xml) if element_xml
    end

    def accounting
      element_xml = at_xpath 'inv:accounting'

      RefType.new(element_xml) if element_xml
    end

    def classification_vat
      element_xml = at_xpath 'inv:classificationVAT'

      ClassificationVatType.new(element_xml) if element_xml
    end

    def classification_kvdph
      element_xml = at_xpath 'inv:classificationKVDPH'

      RefType.new(element_xml) if element_xml
    end

    def centre
      element_xml = at_xpath 'inv:centre'

      RefType.new(element_xml) if element_xml
    end

    def activity
      element_xml = at_xpath 'inv:activity'

      RefType.new(element_xml) if element_xml
    end

    def contract
      element_xml = at_xpath 'inv:contract'

      RefType.new(element_xml) if element_xml
    end

    def expiration_date
      text_at 'inv:expirationDate'
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
