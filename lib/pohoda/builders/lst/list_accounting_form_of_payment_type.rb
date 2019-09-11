module Pohoda
  module Builders
    module Lst
      class ListAccountingFormOfPaymentType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :accounting_form_of_payment
            data[:accounting_form_of_payment].each { |i| root << Afp::AccountingFormOfPaymentTypeRoot.new('lst:accountingFormOfPayment', i).builder }
          end

          root
        end
      end
    end
  end
end