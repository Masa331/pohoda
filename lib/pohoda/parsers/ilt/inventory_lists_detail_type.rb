module Pohoda
  module Parsers
    module Ilt
      class InventoryListsDetailType
        include ParserCore::BaseParser

        def inventory_lists_item
          array_of_at(Ilt::InventoryListsItemType, ['ilt:inventoryListsItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:inventory_lists_item] = inventory_lists_item.map(&:to_h) if has? 'ilt:inventoryListsItem'

          hash
        end
      end
    end
  end
end