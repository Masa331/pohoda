module Pohoda
  module Parsers
    module Act
      class AccountancyResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end