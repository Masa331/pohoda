module Pohoda
  module Parsers
    module Sto
      class StoreResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end