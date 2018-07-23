module Pohoda
  module Builders
    module Acp
      class ActionPriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_price_header
            root << Acp::ActionPriceHeaderType.new('acp:actionPriceHeader', data[:action_price_header]).builder
          end
          if data.key? :action_price_item
            element = Ox::Element.new('acp:actionPriceItem')
            data[:action_price_item].each { |i| element << Acp::ActionPriceStockItemType.new('acp:actionPriceStockItem', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end