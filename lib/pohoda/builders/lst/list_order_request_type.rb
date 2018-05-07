module Pohoda
  module Builders
    module Lst
      class ListOrderRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_order
            root << Ftr::RequestOrderType.new('lst:requestOrder', data[:request_order]).builder
          end

          root
        end
      end
    end
  end
end