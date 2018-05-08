module Pohoda
  module Parsers
    module Stk
      class StockItemType2
        include ParserCore::BaseParser
        include Stk::Groups::MyGroupStockItem

        def stock_price_item
          array_of_at(Typ::StockPriceType, ['stk:stockPriceItem', 'stk:stockPrice'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stock_price_item] = stock_price_item.map(&:to_h_with_attrs) if has? 'stk:stockPriceItem'

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end