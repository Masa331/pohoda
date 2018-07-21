module Pohoda
  module Builders
    module Acp
      class ActionPriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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