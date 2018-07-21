module Pohoda
  module Builders
    module Lst
      class ListStoreRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_store
            root << Ftr::RequestStoreType.new('lst:requestStore', data[:request_store]).builder
          end

          root
        end
      end
    end
  end
end