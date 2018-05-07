module Pohoda
  module Parsers
    module Typ
      class TypeCurrencyHomeItem2
        include ParserCore::BaseParser

        def unit_price
          at 'typ:unitPrice'
        end

        def price
          at 'typ:price'
        end

        def price_vat
          at 'typ:priceVAT'
        end

        def price_sum
          at 'typ:priceSum'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:unit_price] = unit_price if has? 'typ:unitPrice'
          hash[:price] = price if has? 'typ:price'
          hash[:price_vat] = price_vat if has? 'typ:priceVAT'
          hash[:price_sum] = price_sum if has? 'typ:priceSum'

          hash
        end
      end
    end
  end
end