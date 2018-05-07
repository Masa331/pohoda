module Pohoda
  module Parsers
    module Con
      class ContractResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end