module Pohoda
  module Parsers
    module Stk
      class StockItemResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end