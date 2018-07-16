module Pohoda
  module Builders
    module Lst
      class ListSupplierRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_supplier
            root << Ftr::RequestStockType.new('lst:requestSupplier', data[:request_supplier]).builder
          end

          root
        end
      end
    end
  end
end