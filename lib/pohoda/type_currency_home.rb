require "pohoda/base_element"
require "pohoda/type_round"

module Pohoda
  class TypeCurrencyHome
    include BaseElement

    def price_none
      at :'typ:priceNone'
    end

    def price_low
      at :'typ:priceLow'
    end

    def price_low_vat
      at :'typ:priceLowVAT'
    end

    def price_low_sum
      at :'typ:priceLowSum'
    end

    def price_high
      at :'typ:priceHigh'
    end

    def price_high_vat
      at :'typ:priceHighVAT'
    end

    def price_high_sum
      at :'typ:priceHighSum'
    end

    def price_3
      at :'typ:price3'
    end

    def price_3_vat
      at :'typ:price3VAT'
    end

    def price_3_sum
      at :'typ:price3Sum'
    end

    def round
      element_xml = at :'typ:round'

      TypeRound.new(element_xml) if element_xml
    end

    def to_h
      { price_none: price_none,
        price_low: price_low,
        price_low_vat: price_low_vat,
        price_low_sum: price_low_sum,
        price_high: price_high,
        price_high_vat: price_high_vat,
        price_high_sum: price_high_sum,
        price_3: price_3,
        price_3_vat: price_3_vat,
        price_3_sum: price_3_sum,
        round: round.to_h }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
