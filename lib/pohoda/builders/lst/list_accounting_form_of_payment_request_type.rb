module Pohoda
  module Builders
    module Lst
      class ListAccountingFormOfPaymentRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:requestAccountingFormOfPayment', data[:request_accounting_form_of_payment], data[:request_accounting_form_of_payment_attributes]) if data.key? :request_accounting_form_of_payment

          root
        end
      end
    end
  end
end