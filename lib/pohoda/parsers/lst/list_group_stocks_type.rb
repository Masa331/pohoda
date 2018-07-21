module Pohoda
  module Parsers
    module Lst
      class ListGroupStocksType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def group_stocks
          array_of_at(Gr::GroupStocksType, ['lst:groupStocks'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:group_stocks] = group_stocks.map(&:to_h) if has? 'lst:groupStocks'

          hash
          super.merge(hash)
        end
      end
    end
  end
end