module Pohoda
  module Parsers
    module Typ
      class StockPriceType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def price
          at 'typ:price'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:price] = price if has? 'typ:price'

          hash
        end
      end
    end
  end
end