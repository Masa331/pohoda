module Pohoda
  module Parsers
    module Acp
      class ActionPriceType
        include ParserCore::BaseParser

        def action_price_header
          submodel_at(Acp::ActionPriceHeaderType, 'acp:actionPriceHeader')
        end

        def action_price_item
          array_of_at(Acp::ActionPriceStockItemType, ['acp:actionPriceItem', 'acp:actionPriceStockItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_price_header] = action_price_header.to_h if has? 'acp:actionPriceHeader'
          hash[:action_price_item] = action_price_item.map(&:to_h) if has? 'acp:actionPriceItem'

          hash
        end
      end
    end
  end
end