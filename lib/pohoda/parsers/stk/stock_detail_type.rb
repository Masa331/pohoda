module Pohoda
  module Parsers
    module Stk
      class StockDetailType
        include ParserCore::BaseParser

        def stock_item
          array_of_at(Stk::StockItemType, ['stk:stockItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stock_item] = stock_item.map(&:to_h_with_attrs) if has? 'stk:stockItem'

          hash
        end
      end
    end
  end
end