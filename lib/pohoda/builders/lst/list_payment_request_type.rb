module Pohoda
  module Builders
    module Lst
      class ListPaymentRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_payment
            root << Ftr::RequestPaymentType.new('lst:requestPayment', data[:request_payment]).builder
          end

          root
        end
      end
    end
  end
end