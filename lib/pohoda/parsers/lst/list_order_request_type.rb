module Pohoda
  module Parsers
    module Lst
      class ListOrderRequestType
        include ParserCore::BaseParser

        def request_order
          submodel_at(Ftr::RequestOrderType, 'lst:requestOrder')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_order] = request_order.to_h_with_attrs if has? 'lst:requestOrder'

          hash
        end
      end
    end
  end
end