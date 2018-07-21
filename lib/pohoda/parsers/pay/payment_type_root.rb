module Pohoda
  module Parsers
    module Pay
      class PaymentTypeRoot
        include ParserCore::BaseParser

        def payment_header
          submodel_at(Pay::PaymentHeaderType, 'pay:paymentHeader')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:payment_header] = payment_header.to_h if has? 'pay:paymentHeader'

          hash
        end
      end
    end
  end
end