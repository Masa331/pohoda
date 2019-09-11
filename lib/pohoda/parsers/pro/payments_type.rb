module Pohoda
  module Parsers
    module Pro
      class PaymentsType
        include ParserCore::BaseParser

        def payment_item
          array_of_at(Pro::PaymentItemType, ['pro:paymentItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:payment_item] = payment_item.map(&:to_h) if has? 'pro:paymentItem'

          hash
        end
      end
    end
  end
end