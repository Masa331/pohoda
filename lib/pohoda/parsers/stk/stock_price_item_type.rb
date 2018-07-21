module Pohoda
  module Parsers
    module Stk
      class StockPriceItemType
        include ParserCore::BaseParser

        def stock_price
          array_of_at(Typ::StockPriceType, ['stk:stockPrice'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:stock_price] = stock_price.map(&:to_h) if has? 'stk:stockPrice'

          hash
        end
      end
    end
  end
end