module Pohoda
  module Builders
    module Pay
      class PaymentTypeRoot
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :payment_header
            root << Pay::PaymentHeaderType.new('pay:paymentHeader', data[:payment_header]).builder
          end

          root
        end
      end
    end
  end
end