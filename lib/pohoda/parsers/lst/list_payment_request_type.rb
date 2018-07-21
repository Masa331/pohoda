module Pohoda
  module Parsers
    module Lst
      class ListPaymentRequestType
        include ParserCore::BaseParser

        def request_payment
          submodel_at(Ftr::RequestPaymentType, 'lst:requestPayment')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_payment] = request_payment.to_h if has? 'lst:requestPayment'

          hash
        end
      end
    end
  end
end