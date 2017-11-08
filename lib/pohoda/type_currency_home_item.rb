module Pohoda
  class TypeCurrencyHomeItem
    include BaseElement

    def unit_price
      text_at 'typ:unitPrice'
    end

    def price
      text_at 'typ:price'
    end

    def price_vat
      text_at 'typ:priceVAT'
    end

    def price_sum
      text_at 'typ:priceSum'
    end

    def to_h
      { unit_price: unit_price,
        price: price,
        price_vat: price_vat,
        price_sum: price_sum }
    end
  end
end
