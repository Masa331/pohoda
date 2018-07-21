module Pohoda
  module Parsers
    module Acp
      class ActionPriceItemType
        include ParserCore::BaseParser

        def action_price_stock_item
          array_of_at(Acp::ActionPriceStockItemType, ['acp:actionPriceStockItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_price_stock_item] = action_price_stock_item.map(&:to_h) if has? 'acp:actionPriceStockItem'

          hash
        end
      end
    end
  end
end