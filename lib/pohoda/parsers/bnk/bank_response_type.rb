module Pohoda
  module Parsers
    module Bnk
      class BankResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end