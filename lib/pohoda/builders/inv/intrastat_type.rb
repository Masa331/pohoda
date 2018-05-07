module Pohoda
  module Builders
    module Inv
      class IntrastatType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('inv:state', data[:state]) if data.key? :state
          root << build_element('inv:stateOfOrigin', data[:state_of_origin]) if data.key? :state_of_origin
          root << build_element('inv:region', data[:region]) if data.key? :region
          root << build_element('inv:transaction', data[:transaction]) if data.key? :transaction
          root << build_element('inv:specialTransaction', data[:special_transaction]) if data.key? :special_transaction
          root << build_element('inv:termsOfDelivery', data[:terms_of_delivery]) if data.key? :terms_of_delivery
          root << build_element('inv:modeOfTransport', data[:mode_of_transport]) if data.key? :mode_of_transport
          root << build_element('inv:shippingCosts', data[:shipping_costs]) if data.key? :shipping_costs

          root
        end
      end
    end
  end
end