module Pohoda
  class TypeCurrencyHome
    include BaseElement

    def price_none
      text_at 'typ:priceNone'
    end

    def price_low
      text_at 'typ:priceLow'
    end

    def price_low_vat
      text_at 'typ:priceLowVAT'
    end

    def price_low_sum
      text_at 'typ:priceLowSum'
    end

    def price_high
      text_at 'typ:priceHigh'
    end

    def price_high_vat
      text_at 'typ:priceHighVAT'
    end

    def price_high_sum
      text_at 'typ:priceHighSum'
    end

    def price_3
      text_at 'typ:price3'
    end

    def price_3_vat
      text_at 'typ:price3VAT'
    end

    def price_3_sum
      text_at 'typ:price3Sum'
    end

    def round
      element_xml = at_xpath 'typ:round'

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
        round: round.to_h }
    end
  end
end
