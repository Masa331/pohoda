module Pohoda
  module Parsers
    module Typ
      class PriceType
        include ParserCore::BaseParser

        def price
          at 'typ:price'
        end

        def price_attributes
          attributes_at 'typ:price'
        end

        def price_vat
          at 'typ:priceVAT'
        end

        def price_vat_attributes
          attributes_at 'typ:priceVAT'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:price] = price if has? 'typ:price'
          hash[:price_attributes] = price_attributes if has? 'typ:price'
          hash[:price_vat] = price_vat if has? 'typ:priceVAT'
          hash[:price_vat_attributes] = price_vat_attributes if has? 'typ:priceVAT'

          hash
        end
      end
    end
  end
end