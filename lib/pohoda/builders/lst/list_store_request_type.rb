module Pohoda
  module Builders
    module Lst
      class ListStoreRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_store
            root << Ftr::RequestStoreType.new('lst:requestStore', data[:request_store]).builder
          end

          root
        end
      end
    end
  end
end