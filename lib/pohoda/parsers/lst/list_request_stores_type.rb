module Pohoda
  module Parsers
    module Lst
      class ListRequestStoresType
        include ParserCore::BaseParser

        def stores
          array_of_at(Typ::RefType, ['lst:stores', 'lst:store'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stores] = stores.map(&:to_h_with_attrs) if has? 'lst:stores'

          hash
        end
      end
    end
  end
end