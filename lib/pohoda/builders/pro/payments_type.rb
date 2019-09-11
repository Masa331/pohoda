module Pohoda
  module Builders
    module Pro
      class PaymentsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :payment_item
            data[:payment_item].each { |i| root << Pro::PaymentItemType.new('pro:paymentItem', i).builder }
          end

          root
        end
      end
    end
  end
end