module Pohoda
  class InvoiceItem
    include BaseElement

    class Price
      include BaseElement

      def unit_price
        t 'typ:unitPrice'
      end

      def price
        t 'typ:price'
      end

      def vat
        t 'typ:priceVAT'
      end

      def total
        t 'typ:priceSum'
      end
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
    end

    def vat_rate
      t 'inv:rateVAT'
    end

    def pay_vat
      t 'inv:payVAT'
    end

    def home_currency
      Price.new(e 'inv:homeCurrency')
    end

    def foreign_currency
      Price.new(e 'inv:foreignCurrency')
    end
  end
end
