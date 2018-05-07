module Pohoda
  module Builders
    module Ilt
      class InventoryListsItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :stock_item
            root << Typ::StockItemType.new('stockItem', data[:stock_item]).builder
          end
          root << build_element('ilt:code', data[:code]) if data.key? :code
          root << build_element('ilt:text', data[:text]) if data.key? :text
          root << build_element('ilt:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('ilt:unit', data[:unit]) if data.key? :unit
          root << build_element('ilt:isDelivered', data[:is_delivered]) if data.key? :is_delivered

          root
        end
      end
    end
  end
end