module Pohoda
  module Builders
    module Acp
      class ActionPriceItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_price_stock_item
            data[:action_price_stock_item].each { |i| root << Acp::ActionPriceStockItemType.new('acp:actionPriceStockItem', i).builder }
          end

          root
        end
      end
    end
  end
end