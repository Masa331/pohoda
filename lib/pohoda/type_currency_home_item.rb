module Pohoda
  class TypeCurrencyHomeItem
    include BaseElement

    def unit_price
      at :'typ:unitPrice'
    end

    def price
      at :'typ:price'
    end

    def price_vat
      at :'typ:priceVAT'
    end

    def price_sum
      at :'typ:priceSum'
    end

    def to_h
      { unit_price: unit_price,
        price: price,
        price_vat: price_vat,
        price_sum: price_sum }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
