module Pohoda
  module Parsers
    module Lst
      class ListInventoryListsType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def inventory_lists
          array_of_at(Ilt::InventoryListsType, ['lst:inventoryLists'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:inventory_lists] = inventory_lists.map(&:to_h_with_attrs) if has? 'lst:inventoryLists'

          hash
          super.merge(hash)
        end
      end
    end
  end
end