module Pohoda
  module Builders
    module Lst
      class ListInventoryListsRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_inventory_lists
            root << Ftr::RequestInventoryListsType.new('lst:requestInventoryLists', data[:request_inventory_lists]).builder
          end

          root
        end
      end
    end
  end
end