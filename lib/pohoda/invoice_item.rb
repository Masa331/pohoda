module Pohoda
  class InvoiceItem
    include BaseElement

    def id
      t 'inv:id'
    end

    def text
      t 'inv:text'
    end

    def quantity
      t 'inv:quantity'
    end

    def unit
      t 'inv:unit'
    end

    def coefficient
      t 'inv:coefficient'
    end

    def pay_vat
      t 'inv:payVAT'
    end

    def rate_vat
      t 'inv:rateVAT'
    end

    def percentVAT
      t 'inv:percentVAT'
    end

    def discount_percentage
      t 'inv:discountPercentage'
    end

    def home_currency
      TypeCurrencyHomeItem.new(e 'inv:homeCurrency')
    end

    def foreign_currency
      TypeCurrencyForeignItem.new(e 'inv:foreignCurrency')
    end
  end
end
