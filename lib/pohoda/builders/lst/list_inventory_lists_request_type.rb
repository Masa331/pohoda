module Pohoda
  module Builders
    module Lst
      class ListInventoryListsRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_inventory_lists
            root << Ftr::RequestInventoryListsType.new('requestInventoryLists', data[:request_inventory_lists]).builder
          end

          root
        end
      end
    end
  end
end