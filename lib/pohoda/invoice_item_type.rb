require "pohoda/base_element"
require "pohoda/link_item_type"
require "pohoda/type_currency_home_item"
require "pohoda/type_currency_foreign_item"
require "pohoda/stock_item_type"
require "pohoda/ref_type"
require "pohoda/classification_vat_type"

module Pohoda
  class InvoiceItemType
    include BaseElement

    def link
      element_xml = at :'inv:link'

      LinkItemType.new(element_xml) if element_xml
    end

    def id
      at :'inv:id'
    end

    def text
      at :'inv:text'
    end

    def quantity
      at :'inv:quantity'
    end

    def unit
      at :'inv:unit'
    end

    def coefficient
      at :'inv:coefficient'
    end

    def pay_vat
      at :'inv:payVAT'
    end

    def rate_vat
      at :'inv:rateVAT'
    end

    def percent_vat
      at :'inv:percentVAT'
    end

    def discount_percentage
      at :'inv:discountPercentage'
    end

    def code
      at :'inv:code'
    end

    def guarantee
      at :'inv:guarantee'
    end

    def guarantee_type
      at :'inv:guaranteeType'
    end

    def note
      at :'inv:note'
    end

    def home_currency
      element_xml = at :'inv:homeCurrency'

      TypeCurrencyHomeItem.new(element_xml) if element_xml
    end

    def foreign_currency
      element_xml = at :'inv:foreignCurrency'

      TypeCurrencyForeignItem.new(element_xml) if element_xml
    end

    def stock_item
      element_xml = at :'inv:stockItem'

      StockItemType.new(element_xml) if element_xml
    end

    def accounting
      element_xml = at :'inv:accounting'

      RefType.new(element_xml) if element_xml
    end

    def classification_vat
      element_xml = at :'inv:classificationVAT'

      ClassificationVatType.new(element_xml) if element_xml
    end

    def classification_kvdph
      element_xml = at :'inv:classificationKVDPH'

      RefType.new(element_xml) if element_xml
    end

    def centre
      element_xml = at :'inv:centre'

      RefType.new(element_xml) if element_xml
    end

    def activity
      element_xml = at :'inv:activity'

      RefType.new(element_xml) if element_xml
    end

    def contract
      element_xml = at :'inv:contract'

      RefType.new(element_xml) if element_xml
    end

    def expiration_date
      at :'inv:expirationDate'
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
        expiration_date: expiration_date }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
