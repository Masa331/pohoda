module Pohoda
  module Builders
    module Afp
      class AccountingFormOfPaymentTypeRoot
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :accounting_form_of_payment_header
            root << Afp::AccountingFormOfPaymentHeaderType.new('afp:accountingFormOfPaymentHeader', data[:accounting_form_of_payment_header]).builder
          end

          root
        end
      end
    end
  end
end