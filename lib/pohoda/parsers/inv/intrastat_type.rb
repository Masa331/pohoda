module Pohoda
  module Parsers
    module Inv
      class IntrastatType
        include ParserCore::BaseParser

        def state
          at 'inv:state'
        end

        def state_attributes
          attributes_at 'inv:state'
        end

        def state_of_origin
          at 'inv:stateOfOrigin'
        end

        def state_of_origin_attributes
          attributes_at 'inv:stateOfOrigin'
        end

        def region
          at 'inv:region'
        end

        def region_attributes
          attributes_at 'inv:region'
        end

        def transaction
          at 'inv:transaction'
        end

        def transaction_attributes
          attributes_at 'inv:transaction'
        end

        def special_transaction
          at 'inv:specialTransaction'
        end

        def special_transaction_attributes
          attributes_at 'inv:specialTransaction'
        end

        def terms_of_delivery
          at 'inv:termsOfDelivery'
        end

        def terms_of_delivery_attributes
          attributes_at 'inv:termsOfDelivery'
        end

        def mode_of_transport
          at 'inv:modeOfTransport'
        end

        def mode_of_transport_attributes
          attributes_at 'inv:modeOfTransport'
        end

        def shipping_costs
          at 'inv:shippingCosts'
        end

        def shipping_costs_attributes
          attributes_at 'inv:shippingCosts'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:state] = state if has? 'inv:state'
          hash[:state_attributes] = state_attributes if has? 'inv:state'
          hash[:state_of_origin] = state_of_origin if has? 'inv:stateOfOrigin'
          hash[:state_of_origin_attributes] = state_of_origin_attributes if has? 'inv:stateOfOrigin'
          hash[:region] = region if has? 'inv:region'
          hash[:region_attributes] = region_attributes if has? 'inv:region'
          hash[:transaction] = transaction if has? 'inv:transaction'
          hash[:transaction_attributes] = transaction_attributes if has? 'inv:transaction'
          hash[:special_transaction] = special_transaction if has? 'inv:specialTransaction'
          hash[:special_transaction_attributes] = special_transaction_attributes if has? 'inv:specialTransaction'
          hash[:terms_of_delivery] = terms_of_delivery if has? 'inv:termsOfDelivery'
          hash[:terms_of_delivery_attributes] = terms_of_delivery_attributes if has? 'inv:termsOfDelivery'
          hash[:mode_of_transport] = mode_of_transport if has? 'inv:modeOfTransport'
          hash[:mode_of_transport_attributes] = mode_of_transport_attributes if has? 'inv:modeOfTransport'
          hash[:shipping_costs] = shipping_costs if has? 'inv:shippingCosts'
          hash[:shipping_costs_attributes] = shipping_costs_attributes if has? 'inv:shippingCosts'

          hash
        end
      end
    end
  end
end