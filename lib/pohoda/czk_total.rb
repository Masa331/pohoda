module Pohoda
  class CzkTotal
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
      Total.new(without_vat: @xml.xpath('typ:priceNone').text,
                vat: 0,
                total: @xml.xpath('typ:priceNone').text)
    end

    def low_rate
      Total.new(without_vat: @xml.xpath('typ:priceLow').text,
                vat: @xml.xpath('typ:priceLowVAT').text,
                total: @xml.xpath('typ:priceLowSum').text)
    end

    def standard_rate
      Total.new(without_vat: @xml.xpath('typ:priceHigh').text,
                vat: @xml.xpath('typ:priceHighVAT').text,
                total: @xml.xpath('typ:priceHighSum').text)
    end

    def third_rate
      Total.new(without_vat: @xml.xpath('typ:priceThird').text,
                vat: @xml.xpath('typ:priceThirdVAT').text,
                total: @xml.xpath('typ:priceThirdSum').text)
    end

    def rounding
      t 'typ:round/typ:priceRound'
    end
  end
end
