module Pohoda
  module Builders
    module Lst
      class ListInventoryListsType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :inventory_lists
            data[:inventory_lists].each { |i| root << Ilt::InventoryListsType.new('lst:inventoryLists', i).builder }
          end

          root
        end
      end
    end
  end
end