module Pohoda
  module Parsers
    module Typ
      class PaymentType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def id_attributes
          attributes_at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def ids_attributes
          attributes_at 'typ:ids'
        end

        def payment_type
          at 'typ:paymentType'
        end

        def payment_type_attributes
          attributes_at 'typ:paymentType'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'typ:id'
          hash[:id_attributes] = id_attributes if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:ids_attributes] = ids_attributes if has? 'typ:ids'
          hash[:payment_type] = payment_type if has? 'typ:paymentType'
          hash[:payment_type_attributes] = payment_type_attributes if has? 'typ:paymentType'

          hash
        end
      end
    end
  end
end