require "pohoda/base_element"
require "pohoda/ref_type"

module Pohoda
  class TypeCurrencyForeign
    include BaseElement

    def currency
      element_xml = at :'typ:currency'

      RefType.new(element_xml) if element_xml
    end

    def rate
      at :'typ:rate'
    end

    def amount
      at :'typ:amount'
    end

    def price_sum
      at :'typ:priceSum'
    end

    def to_h
      { currency: currency.to_h,
        rate: rate,
        amount: amount,
        price_sum: price_sum }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
