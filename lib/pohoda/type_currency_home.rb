module Pohoda
  class TypeCurrencyHome
    include BaseElement

    def price_none
      t 'typ:priceNone'
    end

    def price_low
      t 'typ:priceLow'
    end

    def price_low_vat
      t 'typ:priceLowVAT'
    end

    def price_low_sum
      t 'typ:priceLowSum'
    end

    def price_high
      t 'typ:priceHigh'
    end

    def price_high_vat
      t 'typ:priceHighVAT'
    end

    def price_high_sum
      t 'typ:priceHighSum'
    end

    def price_3
      t 'typ:price3'
    end

    def price_3_vat
      t 'typ:price3VAT'
    end

    def price_3_sum
      t 'typ:price3Sum'
    end

    def round
      TypeRound.new(e 'typ:round')
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
