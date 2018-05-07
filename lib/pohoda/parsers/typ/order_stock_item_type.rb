module Pohoda
  module Parsers
    module Typ
      class OrderStockItemType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Typ::ActionTypeStockItem, 'typ:actionType')
        end

        def stock_order
          at 'typ:stockOrder'
        end

        def stock_item
          submodel_at(Typ::StockRefType, 'typ:stockItem')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type.to_h_with_attrs if has? 'typ:actionType'
          hash[:stock_order] = stock_order if has? 'typ:stockOrder'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'typ:stockItem'

          hash
        end
      end
    end
  end
end