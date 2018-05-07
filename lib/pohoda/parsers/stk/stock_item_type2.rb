module Pohoda
  module Parsers
    module Stk
      class StockItemType2
        include ParserCore::BaseParser
        include Stk::Groups::MyGroupStockItem

        def stock_price_item
          submodel_at(Stk::StockPriceItemType, 'stk:stockPriceItem')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stock_price_item] = stock_price_item.to_h_with_attrs if has? 'stk:stockPriceItem'

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end