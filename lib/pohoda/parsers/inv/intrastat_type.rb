module Pohoda
  module Parsers
    module Inv
      class IntrastatType
        include ParserCore::BaseParser

        def state
          at 'inv:state'
        end

        def state_of_origin
          at 'inv:stateOfOrigin'
        end

        def region
          at 'inv:region'
        end

        def transaction
          at 'inv:transaction'
        end

        def special_transaction
          at 'inv:specialTransaction'
        end

        def terms_of_delivery
          at 'inv:termsOfDelivery'
        end

        def mode_of_transport
          at 'inv:modeOfTransport'
        end

        def shipping_costs
          at 'inv:shippingCosts'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:state] = state if has? 'inv:state'
          hash[:state_of_origin] = state_of_origin if has? 'inv:stateOfOrigin'
          hash[:region] = region if has? 'inv:region'
          hash[:transaction] = transaction if has? 'inv:transaction'
          hash[:special_transaction] = special_transaction if has? 'inv:specialTransaction'
          hash[:terms_of_delivery] = terms_of_delivery if has? 'inv:termsOfDelivery'
          hash[:mode_of_transport] = mode_of_transport if has? 'inv:modeOfTransport'
          hash[:shipping_costs] = shipping_costs if has? 'inv:shippingCosts'

          hash
        end
      end
    end
  end
end