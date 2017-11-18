module Pohoda
  class TypeCurrencyForeign
    include BaseElement

    def currency
      element_xml = at_xpath 'currency'

      RefType.new(element_xml) if element_xml
    end

    def rate
      text_at 'rate'
    end

    def amount
      text_at 'amount'
    end

    def price_sum
      text_at 'priceSum'
    end

    def to_h
      { currency: currency.to_h,
        rate: rate,
        amount: amount,
        price_sum: price_sum }
    end
  end
end
