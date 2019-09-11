module Pohoda
  module Parsers
    module Lst
      class ListAccountingFormOfPaymentType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def accounting_form_of_payment
          array_of_at(Afp::AccountingFormOfPaymentTypeRoot, ['lst:accountingFormOfPayment'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:accounting_form_of_payment] = accounting_form_of_payment.map(&:to_h) if has? 'lst:accountingFormOfPayment'

          hash
          super.merge(hash)
        end
      end
    end
  end
end