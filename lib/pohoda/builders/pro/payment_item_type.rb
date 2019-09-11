module Pohoda
  module Builders
    module Pro
      class PaymentItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :payment_type
            root << Typ::RefType.new('pro:paymentType', data[:payment_type]).builder
          end
          root << build_element('pro:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('pro:received', data[:received], data[:received_attributes]) if data.key? :received
          root << build_element('pro:receivedHomeCurrency', data[:received_home_currency], data[:received_home_currency_attributes]) if data.key? :received_home_currency
          if data.key? :payment_advanced
            root << Pro::PaymentAdvancedType.new('pro:paymentAdvanced', data[:payment_advanced]).builder
          end
          root << build_element('pro:returned', data[:returned], data[:returned_attributes]) if data.key? :returned
          root << build_element('pro:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end