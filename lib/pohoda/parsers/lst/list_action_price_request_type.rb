module Pohoda
  module Parsers
    module Lst
      class ListActionPriceRequestType
        include ParserCore::BaseParser

        def request_action_price
          submodel_at(Ftr::RequestActionPriceType, 'lst:requestActionPrice')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_action_price] = request_action_price.to_h_with_attrs if has? 'lst:requestActionPrice'

          hash
        end
      end
    end
  end
end