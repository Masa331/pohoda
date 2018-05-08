module Pohoda
  module Parsers
    module Stk
      class AttachItemType
        include ParserCore::BaseParser
        include Stk::Groups::MyGroupStockItem

        def warehouse
          at 'stk:warehouse'
        end

        def not_expedite
          at 'stk:notExpedite'
        end

        def edit
          at 'stk:edit'
        end

        def stock_price_item
          array_of_at(Typ::StockPriceType, ['stk:stockPriceItem', 'stk:stockPrice'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:warehouse] = warehouse if has? 'stk:warehouse'
          hash[:not_expedite] = not_expedite if has? 'stk:notExpedite'
          hash[:edit] = edit if has? 'stk:edit'
          hash[:stock_price_item] = stock_price_item.map(&:to_h_with_attrs) if has? 'stk:stockPriceItem'

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end