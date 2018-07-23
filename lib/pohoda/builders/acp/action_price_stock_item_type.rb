module Pohoda
  module Builders
    module Acp
      class ActionPriceStockItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('acp:stock', data[:stock], data[:stock_attributes]) if data.key? :stock
          root << build_element('acp:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :storage
            root << Typ::RefTypeStorage.new('acp:storage', data[:storage]).builder
          end
          if data.key? :default_price_stock
            root << Acp::DefaultPriceStockType.new('acp:defaultPriceStock', data[:default_price_stock]).builder
          end
          if data.key? :action_price_stock
            root << Acp::ActionPriceStockType.new('acp:actionPriceStock', data[:action_price_stock]).builder
          end

          root
        end
      end
    end
  end
end