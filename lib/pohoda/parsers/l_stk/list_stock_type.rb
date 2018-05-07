module Pohoda
  module Parsers
    module LStk
      class ListStockType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def stock
          array_of_at(Stk::StockType, ['lStk:stock'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stock] = stock.map(&:to_h_with_attrs) if has? 'lStk:stock'

          hash
          super.merge(hash)
        end
      end
    end
  end
end