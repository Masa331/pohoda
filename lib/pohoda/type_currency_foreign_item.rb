module Pohoda
  class TypeCurrencyForeignItem
    include BaseElement

    def unit_price
      text_at 'unitPrice'
    end

    def price
      text_at 'price'
    end

    def price_vat
      text_at 'priceVAT'
    end

    def price_sum
      text_at 'priceSum'
    end

    def to_h
      { unit_price: unit_price,
        price: price,
        price_vat: price_vat,
        price_sum: price_sum }
    end
  end
end
