module Pohoda
  module Builders
    module Lst
      class ListOrderRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_order
            root << Ftr::RequestOrderType.new('lst:requestOrder', data[:request_order]).builder
          end

          root
        end
      end
    end
  end
end