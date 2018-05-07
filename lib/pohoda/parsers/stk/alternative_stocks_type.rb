module Pohoda
  module Parsers
    module Stk
      class AlternativeStocksType
        include ParserCore::BaseParser

        def id_stocks
          array_of_at(Typ::OrderStockItemType, ['stk:idStocks'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id_stocks] = id_stocks.map(&:to_h_with_attrs) if has? 'stk:idStocks'

          hash
        end
      end
    end
  end
end