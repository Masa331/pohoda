module Pohoda
  module Parsers
    module Typ
      class PriceType
        include ParserCore::BaseParser

        def price
          at 'typ:price'
        end

        def price_vat
          at 'typ:priceVAT'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:price] = price if has? 'typ:price'
          hash[:price_vat] = price_vat if has? 'typ:priceVAT'

          hash
        end
      end
    end
  end
end