module Pohoda
  module Builders
    module Ilt
      class InventoryListsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :inventory_lists_header
            root << Ilt::InventoryListsHeaderType.new('ilt:inventoryListsHeader', data[:inventory_lists_header]).builder
          end
          if data.key? :inventory_lists_detail
            element = Ox::Element.new('ilt:inventoryListsDetail')
            data[:inventory_lists_detail].each { |i| element << Ilt::InventoryListsItemType.new('ilt:inventoryListsItem', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end