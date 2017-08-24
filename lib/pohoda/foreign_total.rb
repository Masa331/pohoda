module Pohoda
  class ForeignTotal
    include BaseElement

    class Total
      attr_accessor :without_vat, :vat, :total

      def initialize(without_vat:, vat:, total:)
        @without_vat = without_vat
        @vat = vat
        @total = total
      end
    end

    def zero_rate
      Total.new(without_vat: @xml.xpath('typ:priceSum/typ:priceNone').text,
                vat: 0,
                total: @xml.xpath('typ:priceSum/typ:priceNone').text)
    end

    def low_rate
      Total.new(without_vat: @xml.xpath('typ:priceSum/typ:priceLow').text,
                vat: @xml.xpath('typ:priceSum/typ:priceLowVAT').text,
                total: @xml.xpath('typ:priceSum/typ:priceLowSum').text)
    end

    def standard_rate
      Total.new(without_vat: @xml.xpath('typ:priceSum/typ:priceHigh').text,
                vat: @xml.xpath('typ:priceSum/typ:priceHighVAT').text,
                total: @xml.xpath('typ:priceSum/typ:priceHighSum').text)
    end

    def third_rate
      Total.new(without_vat: @xml.xpath('typ:priceSum/typ:priceThird').text,
                vat: @xml.xpath('typ:priceSum/typ:priceThirdVAT').text,
                total: @xml.xpath('typ:priceSum/typ:priceThirdSum').text)
    end

    def rounding
      t 'p:priceSum/typ:round/typ:priceRound'
    end

    def rate
      t 'typ:rate'
    end

    def amount
      t 'typ:amount'
    end

    def currency
      Reference.new(e 'typ:currency')
    end
  end
end
