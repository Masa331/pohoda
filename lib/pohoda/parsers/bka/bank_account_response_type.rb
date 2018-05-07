module Pohoda
  module Parsers
    module Bka
      class BankAccountResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end