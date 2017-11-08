module Pohoda
  class TypeCurrencyForeign
    include BaseElement

    def currency
      element_xml = at_xpath 'typ:currency'

      RefType.new(element_xml) if element_xml
    end

    def rate
      text_at 'typ:rate'
    end

    def amount
      text_at 'typ:amount'
    end

    def price_sum
      text_at 'typ:priceSum'
    end

    def to_h
      { currency: currency.to_h,
        rate: rate,
        amount: amount,
        price_sum: price_sum }
    end
  end
end
