module Pohoda
  module Parsers
    module Pre
      class PrevodkaResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end