module Pohoda
  module Builders
    module Acp
      class ActionPriceItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :action_price_stock_item
            data[:action_price_stock_item].each { |i| root << Acp::ActionPriceStockItemType.new('acp:actionPriceStockItem', i).builder }
          end

          root
        end
      end
    end
  end
end