module Pohoda
  module Parsers
    module Sup
      class SupplierResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end