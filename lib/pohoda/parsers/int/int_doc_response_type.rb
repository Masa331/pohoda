module Pohoda
  module Parsers
    module Int
      class IntDocResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end