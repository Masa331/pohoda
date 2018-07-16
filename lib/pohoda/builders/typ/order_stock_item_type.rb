module Pohoda
  module Builders
    module Typ
      class OrderStockItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_type
            root << Typ::ActionTypeStockItem.new('typ:actionType', data[:action_type]).builder
          end
          root << build_element('typ:stockOrder', data[:stock_order], data[:stock_order_attributes]) if data.key? :stock_order
          if data.key? :stock_item
            root << Typ::StockRefType.new('typ:stockItem', data[:stock_item]).builder
          end

          root
        end
      end
    end
  end
end