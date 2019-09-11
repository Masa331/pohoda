module Pohoda
  module Parsers
    module Lst
      class ListAccountingFormOfPaymentRequestType
        include ParserCore::BaseParser

        def request_accounting_form_of_payment
          at 'lst:requestAccountingFormOfPayment'
        end

        def request_accounting_form_of_payment_attributes
          attributes_at 'lst:requestAccountingFormOfPayment'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_accounting_form_of_payment] = request_accounting_form_of_payment if has? 'lst:requestAccountingFormOfPayment'
          hash[:request_accounting_form_of_payment_attributes] = request_accounting_form_of_payment_attributes if has? 'lst:requestAccountingFormOfPayment'

          hash
        end
      end
    end
  end
end