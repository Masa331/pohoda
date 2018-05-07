module Pohoda
  module Parsers
    module Lst
      class ListPaymentType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def payment
          array_of_at(Pay::PaymentTypeRoot, ['lst:payment'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:payment] = payment.map(&:to_h_with_attrs) if has? 'lst:payment'

          hash
          super.merge(hash)
        end
      end
    end
  end
end