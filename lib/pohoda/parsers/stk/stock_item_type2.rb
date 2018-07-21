module Pohoda
  module Parsers
    module Stk
      class StockItemType2
        include ParserCore::BaseParser
        include Stk::Groups::MyGroupStockItem

        def stock_price_item
          array_of_at(Typ::StockPriceType, ['stk:stockPriceItem', 'stk:stockPrice'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:stock_price_item] = stock_price_item.map(&:to_h) if has? 'stk:stockPriceItem'

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end