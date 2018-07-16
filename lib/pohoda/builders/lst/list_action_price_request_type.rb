module Pohoda
  module Builders
    module Lst
      class ListActionPriceRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_action_price
            root << Ftr::RequestActionPriceType.new('lst:requestActionPrice', data[:request_action_price]).builder
          end

          root
        end
      end
    end
  end
end