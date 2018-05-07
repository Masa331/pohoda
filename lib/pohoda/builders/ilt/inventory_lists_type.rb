module Pohoda
  module Builders
    module Ilt
      class InventoryListsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :inventory_lists_header
            root << Ilt::InventoryListsHeaderType.new('inventoryListsHeader', data[:inventory_lists_header]).builder
          end
          if data.key? :inventory_lists_detail
            root << Ilt::InventoryListsDetailType.new('inventoryListsDetail', data[:inventory_lists_detail]).builder
          end

          root
        end
      end
    end
  end
end