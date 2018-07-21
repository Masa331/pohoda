module Pohoda
  module Parsers
    module Typ
      class TypeCurrencyHomeItem
        include ParserCore::BaseParser

        def unit_price
          at 'typ:unitPrice'
        end

        def unit_price_attributes
          attributes_at 'typ:unitPrice'
        end

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

        def price_sum
          at 'typ:priceSum'
        end

        def price_sum_attributes
          attributes_at 'typ:priceSum'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:unit_price] = unit_price if has? 'typ:unitPrice'
          hash[:unit_price_attributes] = unit_price_attributes if has? 'typ:unitPrice'
          hash[:price] = price if has? 'typ:price'
          hash[:price_attributes] = price_attributes if has? 'typ:price'
          hash[:price_vat] = price_vat if has? 'typ:priceVAT'
          hash[:price_vat_attributes] = price_vat_attributes if has? 'typ:priceVAT'
          hash[:price_sum] = price_sum if has? 'typ:priceSum'
          hash[:price_sum_attributes] = price_sum_attributes if has? 'typ:priceSum'

          hash
        end
      end
    end
  end
end