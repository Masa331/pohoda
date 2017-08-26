module Pohoda
  class TypeCurrencyForeign
    include BaseElement

    def currency
      Reference.new(e 'typ:currency')
    end

    def rate
      t 'typ:rate'
    end

    def amount
      t 'typ:amount'
    end

    def price_sum
      t 'typ:priceSum'
    end

    def to_h
      { currency: currency.to_h,
        rate: rate,
        amount: amount,
        price_sum: price_sum }
    end
  end
end
