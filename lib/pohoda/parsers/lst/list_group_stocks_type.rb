module Pohoda
  module Parsers
    module Lst
      class ListGroupStocksType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def group_stocks
          array_of_at(Gr::GroupStocksType, ['lst:groupStocks'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:group_stocks] = group_stocks.map(&:to_h_with_attrs) if has? 'lst:groupStocks'

          hash
          super.merge(hash)
        end
      end
    end
  end
end