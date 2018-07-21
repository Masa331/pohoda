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

        def stock_order_attributes
          attributes_at 'typ:stockOrder'
        end

        def stock_item
          submodel_at(Typ::StockRefType, 'typ:stockItem')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type.to_h if has? 'typ:actionType'
          hash[:stock_order] = stock_order if has? 'typ:stockOrder'
          hash[:stock_order_attributes] = stock_order_attributes if has? 'typ:stockOrder'
          hash[:stock_item] = stock_item.to_h if has? 'typ:stockItem'

          hash
        end
      end
    end
  end
end