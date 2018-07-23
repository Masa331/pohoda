module Pohoda
  module Builders
    module Pay
      class PaymentTypeRoot
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :payment_header
            root << Pay::PaymentHeaderType.new('pay:paymentHeader', data[:payment_header]).builder
          end

          root
        end
      end
    end
  end
end