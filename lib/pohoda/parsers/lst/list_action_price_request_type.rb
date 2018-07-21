module Pohoda
  module Parsers
    module Lst
      class ListActionPriceRequestType
        include ParserCore::BaseParser

        def request_action_price
          submodel_at(Ftr::RequestActionPriceType, 'lst:requestActionPrice')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_action_price] = request_action_price.to_h if has? 'lst:requestActionPrice'

          hash
        end
      end
    end
  end
end