module Pohoda
  class TypeCurrencyHomeItem
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
  end
end
