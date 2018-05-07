module Pohoda
  module Parsers
    module Pro
      class ProdejkaResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end