module Pohoda
  module Builders
    module Ilt
      class InventoryListsDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :inventory_lists_item
            data[:inventory_lists_item].each { |i| root << Ilt::InventoryListsItemType.new('ilt:inventoryListsItem', i).builder }
          end

          root
        end
      end
    end
  end
end