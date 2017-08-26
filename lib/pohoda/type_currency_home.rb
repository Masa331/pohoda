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
      t 'typ:priceThird'
    end

    def price_3_vat
      t 'typ:priceThirdVAT'
    end

    def price_3_sum
      t 'typ:priceThirdSum'
    end

    def round
      t 'typ:round/typ:priceRound'
    end
  end
end
