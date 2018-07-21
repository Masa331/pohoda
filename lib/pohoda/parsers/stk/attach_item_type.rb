module Pohoda
  module Parsers
    module Stk
      class AttachItemType
        include ParserCore::BaseParser
        include Stk::Groups::MyGroupStockItem

        def warehouse
          at 'stk:warehouse'
        end

        def warehouse_attributes
          attributes_at 'stk:warehouse'
        end

        def not_expedite
          at 'stk:notExpedite'
        end

        def not_expedite_attributes
          attributes_at 'stk:notExpedite'
        end

        def edit
          at 'stk:edit'
        end

        def edit_attributes
          attributes_at 'stk:edit'
        end

        def stock_price_item
          array_of_at(Typ::StockPriceType, ['stk:stockPriceItem', 'stk:stockPrice'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:warehouse] = warehouse if has? 'stk:warehouse'
          hash[:warehouse_attributes] = warehouse_attributes if has? 'stk:warehouse'
          hash[:not_expedite] = not_expedite if has? 'stk:notExpedite'
          hash[:not_expedite_attributes] = not_expedite_attributes if has? 'stk:notExpedite'
          hash[:edit] = edit if has? 'stk:edit'
          hash[:edit_attributes] = edit_attributes if has? 'stk:edit'
          hash[:stock_price_item] = stock_price_item.map(&:to_h) if has? 'stk:stockPriceItem'

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end