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
      element_xml = at_xpath 'link'

      LinkItemType.new(element_xml) if element_xml
    end

    def id
      text_at 'id'
    end

    def text
      text_at 'text'
    end

    def quantity
      text_at 'quantity'
    end

    def unit
      text_at 'unit'
    end

    def coefficient
      text_at 'coefficient'
    end

    def pay_vat
      text_at 'payVAT'
    end

    def rate_vat
      text_at 'rateVAT'
    end

    def percent_vat
      text_at 'percentVAT'
    end

    def discount_percentage
      text_at 'discountPercentage'
    end

    def code
      text_at 'code'
    end

    def guarantee
      text_at 'guarantee'
    end

    def guarantee_type
      text_at 'guaranteeType'
    end

    def note
      text_at 'note'
    end

    def home_currency
      element_xml = at_xpath 'homeCurrency'

      TypeCurrencyHomeItem.new(element_xml) if element_xml
    end

    def foreign_currency
      element_xml = at_xpath 'foreignCurrency'

      TypeCurrencyForeignItem.new(element_xml) if element_xml
    end

    def stock_item
      element_xml = at_xpath 'stockItem'

      StockItemType.new(element_xml) if element_xml
    end

    def accounting
      element_xml = at_xpath 'accounting'

      RefType.new(element_xml) if element_xml
    end

    def classification_vat
      element_xml = at_xpath 'classificationVAT'

      ClassificationVatType.new(element_xml) if element_xml
    end

    def classification_kvdph
      element_xml = at_xpath 'classificationKVDPH'

      RefType.new(element_xml) if element_xml
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

    def expiration_date
      text_at 'expirationDate'
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
