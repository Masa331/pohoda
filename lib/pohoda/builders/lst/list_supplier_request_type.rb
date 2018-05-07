module Pohoda
  module Builders
    module Lst
      class ListSupplierRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_supplier
            root << Ftr::RequestStockType.new('requestSupplier', data[:request_supplier]).builder
          end

          root
        end
      end
    end
  end
end