module Pohoda
  module Parsers
    module LStk
      class ListRequestStockType
        include ParserCore::BaseParser

        def request_stock
          submodel_at(Ftr::RequestStockType, 'lStk:requestStock')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_stock] = request_stock.to_h if has? 'lStk:requestStock'

          hash
        end
      end
    end
  end
end