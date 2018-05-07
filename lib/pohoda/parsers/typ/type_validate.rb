module Pohoda
  module Parsers
    module Typ
      class TypeValidate
        include ParserCore::BaseParser

        def in_stock
          at 'typ:inStock'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:in_stock] = in_stock if has? 'typ:inStock'

          hash
        end
      end
    end
  end
end