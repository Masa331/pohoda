module Pohoda
  module Parsers
    module Lst
      class ListInventoryListsRequestType
        include ParserCore::BaseParser

        def request_inventory_lists
          submodel_at(Ftr::RequestInventoryListsType, 'lst:requestInventoryLists')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_inventory_lists] = request_inventory_lists.to_h if has? 'lst:requestInventoryLists'

          hash
        end
      end
    end
  end
end