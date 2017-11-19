require "pohoda/base_element"
require "pohoda/type_currency_home"
require "pohoda/type_currency_foreign"

module Pohoda
  class InvoiceSummaryType
    include BaseElement

    def rounding_document
      text_at 'roundingDocument'
    end

    def rounding_vat
      text_at 'roundingVAT'
    end

    def calculate_vat
      text_at 'calculateVAT'
    end

    def home_currency
      element_xml = at_xpath 'homeCurrency'

      TypeCurrencyHome.new(element_xml) if element_xml
    end

    def foreign_currency
      element_xml = at_xpath 'foreignCurrency'

      TypeCurrencyForeign.new(element_xml) if element_xml
    end

    def to_h
      { rounding_document: rounding_document,
        rounding_vat: rounding_vat,
        calculate_vat: calculate_vat,
        home_currency: home_currency.to_h,
        foreign_currency: foreign_currency.to_h }
    end
  end
end
