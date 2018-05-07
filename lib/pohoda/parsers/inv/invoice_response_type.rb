module Pohoda
  module Parsers
    module Inv
      class InvoiceResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end