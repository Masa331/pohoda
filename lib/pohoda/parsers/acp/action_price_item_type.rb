module Pohoda
  module Parsers
    module Acp
      class ActionPriceItemType
        include ParserCore::BaseParser

        def action_price_stock_item
          array_of_at(Acp::ActionPriceStockItemType, ['acp:actionPriceStockItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_price_stock_item] = action_price_stock_item.map(&:to_h_with_attrs) if has? 'acp:actionPriceStockItem'

          hash
        end
      end
    end
  end
end