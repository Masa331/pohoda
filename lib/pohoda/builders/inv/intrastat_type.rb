module Pohoda
  module Builders
    module Inv
      class IntrastatType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('inv:state', data[:state], data[:state_attributes]) if data.key? :state
          root << build_element('inv:stateOfOrigin', data[:state_of_origin], data[:state_of_origin_attributes]) if data.key? :state_of_origin
          root << build_element('inv:region', data[:region], data[:region_attributes]) if data.key? :region
          root << build_element('inv:transaction', data[:transaction], data[:transaction_attributes]) if data.key? :transaction
          root << build_element('inv:specialTransaction', data[:special_transaction], data[:special_transaction_attributes]) if data.key? :special_transaction
          root << build_element('inv:termsOfDelivery', data[:terms_of_delivery], data[:terms_of_delivery_attributes]) if data.key? :terms_of_delivery
          root << build_element('inv:modeOfTransport', data[:mode_of_transport], data[:mode_of_transport_attributes]) if data.key? :mode_of_transport
          root << build_element('inv:shippingCosts', data[:shipping_costs], data[:shipping_costs_attributes]) if data.key? :shipping_costs

          root
        end
      end
    end
  end
end