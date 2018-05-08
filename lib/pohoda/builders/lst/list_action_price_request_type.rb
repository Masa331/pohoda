module Pohoda
  module Builders
    module Lst
      class ListActionPriceRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_action_price
            root << Ftr::RequestActionPriceType.new('lst:requestActionPrice', data[:request_action_price]).builder
          end

          root
        end
      end
    end
  end
end