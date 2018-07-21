module Pohoda
  module Parsers
    module Lst
      class ListRequestStoresType
        include ParserCore::BaseParser

        def stores
          array_of_at(Typ::RefType, ['lst:stores', 'lst:store'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:stores] = stores.map(&:to_h) if has? 'lst:stores'

          hash
        end
      end
    end
  end
end