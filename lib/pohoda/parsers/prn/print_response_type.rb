module Pohoda
  module Parsers
    module Prn
      class PrintResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end