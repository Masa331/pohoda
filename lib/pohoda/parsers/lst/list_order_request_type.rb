module Pohoda
  module Parsers
    module Lst
      class ListOrderRequestType
        include ParserCore::BaseParser

        def request_order
          submodel_at(Ftr::RequestOrderType, 'lst:requestOrder')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_order] = request_order.to_h if has? 'lst:requestOrder'

          hash
        end
      end
    end
  end
end