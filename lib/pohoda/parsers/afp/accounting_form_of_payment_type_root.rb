module Pohoda
  module Parsers
    module Afp
      class AccountingFormOfPaymentTypeRoot
        include ParserCore::BaseParser

        def accounting_form_of_payment_header
          submodel_at(Afp::AccountingFormOfPaymentHeaderType, 'afp:accountingFormOfPaymentHeader')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:accounting_form_of_payment_header] = accounting_form_of_payment_header.to_h if has? 'afp:accountingFormOfPaymentHeader'

          hash
        end
      end
    end
  end
end