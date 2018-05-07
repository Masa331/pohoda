module Pohoda
  module Parsers
    module Pay
      class PaymentResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end