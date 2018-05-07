module Pohoda
  module Builders
    module Lst
      class ListPaymentRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_payment
            root << Ftr::RequestPaymentType.new('lst:requestPayment', data[:request_payment]).builder
          end

          root
        end
      end
    end
  end
end