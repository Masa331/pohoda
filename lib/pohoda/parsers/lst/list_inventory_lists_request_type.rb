module Pohoda
  module Parsers
    module Lst
      class ListInventoryListsRequestType
        include ParserCore::BaseParser

        def request_inventory_lists
          submodel_at(Ftr::RequestInventoryListsType, 'lst:requestInventoryLists')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_inventory_lists] = request_inventory_lists.to_h_with_attrs if has? 'lst:requestInventoryLists'

          hash
        end
      end
    end
  end
end