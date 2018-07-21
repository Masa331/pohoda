module Pohoda
  module Parsers
    module Stk
      class CategoriesType
        include ParserCore::BaseParser

        def id_category
          array_of_at(String, ['stk:idCategory'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id_category] = id_category if has? 'stk:idCategory'

          hash
        end
      end
    end
  end
end