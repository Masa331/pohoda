module Pohoda
  module Parsers
    module Afp
      class AccountingPaymentResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end