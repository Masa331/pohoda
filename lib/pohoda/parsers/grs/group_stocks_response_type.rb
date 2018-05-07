module Pohoda
  module Parsers
    module Grs
      class GroupStocksResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end