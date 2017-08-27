module Pohoda
  class TypeCurrencyForeignItem
    include BaseElement

    def unit_price
      t 'typ:unitPrice'
    end

    def price
      t 'typ:price'
    end

    def price_vat
      t 'typ:priceVAT'
    end

    def price_sum
      t 'typ:priceSum'
    end

    def to_h
      { unit_price: unit_price,
        price: price,
        price_vat: price_vat,
        price_sum: price_sum }
    end
  end
end
