module Pohoda
  module Builders
    module Ilt
      class InventoryListsItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :stock_item
            root << Typ::StockItemType.new('ilt:stockItem', data[:stock_item]).builder
          end
          root << build_element('ilt:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('ilt:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('ilt:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('ilt:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('ilt:isDelivered', data[:is_delivered], data[:is_delivered_attributes]) if data.key? :is_delivered

          root
        end
      end
    end
  end
end