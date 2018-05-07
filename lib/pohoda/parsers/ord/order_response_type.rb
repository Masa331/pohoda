module Pohoda
  module Parsers
    module Ord
      class OrderResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end