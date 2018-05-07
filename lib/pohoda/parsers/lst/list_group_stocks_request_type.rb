module Pohoda
  module Parsers
    module Lst
      class ListGroupStocksRequestType
        include ParserCore::BaseParser

        def request_group_stocks
          submodel_at(Ftr::RequestGroupStocksType, 'lst:requestGroupStocks')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_group_stocks] = request_group_stocks.to_h_with_attrs if has? 'lst:requestGroupStocks'

          hash
        end
      end
    end
  end
end