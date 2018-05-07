module Pohoda
  module Parsers
    module Acp
      class ActionPriceType
        include ParserCore::BaseParser

        def action_price_header
          submodel_at(Acp::ActionPriceHeaderType, 'acp:actionPriceHeader')
        end

        def action_price_item
          submodel_at(Acp::ActionPriceItemType, 'acp:actionPriceItem')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_price_header] = action_price_header.to_h_with_attrs if has? 'acp:actionPriceHeader'
          hash[:action_price_item] = action_price_item.to_h_with_attrs if has? 'acp:actionPriceItem'

          hash
        end
      end
    end
  end
end