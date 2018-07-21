module Pohoda
  module Parsers
    module Idp
      class StocksType
        include ParserCore::BaseParser

        def stock_item
          array_of_at(Idp::StockItemType, ['idp:stockItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:stock_item] = stock_item.map(&:to_h) if has? 'idp:stockItem'

          hash
        end
      end
    end
  end
end