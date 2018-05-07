module Pohoda
  module Parsers
    module Typ
      class PaymentType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def payment_type
          at 'typ:paymentType'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:payment_type] = payment_type if has? 'typ:paymentType'

          hash
        end
      end
    end
  end
end