module Pohoda
  module Parsers
    module LStk
      class ListStockType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def stock
          array_of_at(Stk::StockType, ['lStk:stock'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:stock] = stock.map(&:to_h) if has? 'lStk:stock'

          hash
          super.merge(hash)
        end
      end
    end
  end
end