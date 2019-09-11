module Pohoda
  module Parsers
    module Pro
      class PaymentItemType
        include ParserCore::BaseParser

        def payment_type
          submodel_at(Typ::RefType, 'pro:paymentType')
        end

        def text
          at 'pro:text'
        end

        def text_attributes
          attributes_at 'pro:text'
        end

        def received
          at 'pro:received'
        end

        def received_attributes
          attributes_at 'pro:received'
        end

        def received_home_currency
          at 'pro:receivedHomeCurrency'
        end

        def received_home_currency_attributes
          attributes_at 'pro:receivedHomeCurrency'
        end

        def payment_advanced
          submodel_at(Pro::PaymentAdvancedType, 'pro:paymentAdvanced')
        end

        def returned
          at 'pro:returned'
        end

        def returned_attributes
          attributes_at 'pro:returned'
        end

        def note
          at 'pro:note'
        end

        def note_attributes
          attributes_at 'pro:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:payment_type] = payment_type.to_h if has? 'pro:paymentType'
          hash[:text] = text if has? 'pro:text'
          hash[:text_attributes] = text_attributes if has? 'pro:text'
          hash[:received] = received if has? 'pro:received'
          hash[:received_attributes] = received_attributes if has? 'pro:received'
          hash[:received_home_currency] = received_home_currency if has? 'pro:receivedHomeCurrency'
          hash[:received_home_currency_attributes] = received_home_currency_attributes if has? 'pro:receivedHomeCurrency'
          hash[:payment_advanced] = payment_advanced.to_h if has? 'pro:paymentAdvanced'
          hash[:returned] = returned if has? 'pro:returned'
          hash[:returned_attributes] = returned_attributes if has? 'pro:returned'
          hash[:note] = note if has? 'pro:note'
          hash[:note_attributes] = note_attributes if has? 'pro:note'

          hash
        end
      end
    end
  end
end