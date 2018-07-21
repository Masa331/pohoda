module Pohoda
  module Parsers
    module Stk
      class AlternativeStocksType
        include ParserCore::BaseParser

        def id_stocks
          array_of_at(Typ::OrderStockItemType, ['stk:idStocks'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id_stocks] = id_stocks.map(&:to_h) if has? 'stk:idStocks'

          hash
        end
      end
    end
  end
end