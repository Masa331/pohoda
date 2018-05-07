module Pohoda
  module Parsers
    module Idp
      class StocksType
        include ParserCore::BaseParser

        def stock_item
          array_of_at(Idp::StockItemType, ['idp:stockItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stock_item] = stock_item.map(&:to_h_with_attrs) if has? 'idp:stockItem'

          hash
        end
      end
    end
  end
end