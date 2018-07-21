module Pohoda
  module Parsers
    module Typ
      class TypeValidate
        include ParserCore::BaseParser

        def in_stock
          at 'typ:inStock'
        end

        def in_stock_attributes
          attributes_at 'typ:inStock'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:in_stock] = in_stock if has? 'typ:inStock'
          hash[:in_stock_attributes] = in_stock_attributes if has? 'typ:inStock'

          hash
        end
      end
    end
  end
end