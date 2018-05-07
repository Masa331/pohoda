module Pohoda
  module Builders
    module Acp
      class ActionPriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :action_price_header
            root << Acp::ActionPriceHeaderType.new('actionPriceHeader', data[:action_price_header]).builder
          end
          if data.key? :action_price_item
            root << Acp::ActionPriceItemType.new('actionPriceItem', data[:action_price_item]).builder
          end

          root
        end
      end
    end
  end
end