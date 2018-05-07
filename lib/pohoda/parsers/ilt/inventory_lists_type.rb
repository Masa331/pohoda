module Pohoda
  module Parsers
    module Ilt
      class InventoryListsType
        include ParserCore::BaseParser

        def inventory_lists_header
          submodel_at(Ilt::InventoryListsHeaderType, 'ilt:inventoryListsHeader')
        end

        def inventory_lists_detail
          submodel_at(Ilt::InventoryListsDetailType, 'ilt:inventoryListsDetail')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:inventory_lists_header] = inventory_lists_header.to_h_with_attrs if has? 'ilt:inventoryListsHeader'
          hash[:inventory_lists_detail] = inventory_lists_detail.to_h_with_attrs if has? 'ilt:inventoryListsDetail'

          hash
        end
      end
    end
  end
end