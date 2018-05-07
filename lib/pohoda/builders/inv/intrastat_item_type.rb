module Pohoda
  module Builders
    module Inv
      class IntrastatItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('inv:date', data[:date]) if data.key? :date
          root << build_element('inv:goodsCode', data[:goods_code]) if data.key? :goods_code
          root << build_element('inv:description', data[:description]) if data.key? :description
          root << build_element('inv:state', data[:state]) if data.key? :state
          root << build_element('inv:region', data[:region]) if data.key? :region
          root << build_element('inv:stateOfOrigin', data[:state_of_origin]) if data.key? :state_of_origin
          root << build_element('inv:invoicedAmount', data[:invoiced_amount]) if data.key? :invoiced_amount
          root << build_element('inv:transportExpenses', data[:transport_expenses]) if data.key? :transport_expenses
          root << build_element('inv:ownWeight', data[:own_weight]) if data.key? :own_weight
          root << build_element('inv:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('inv:addUnit', data[:add_unit]) if data.key? :add_unit
          root << build_element('inv:transaction', data[:transaction]) if data.key? :transaction
          root << build_element('inv:termsOfDelivery', data[:terms_of_delivery]) if data.key? :terms_of_delivery
          root << build_element('inv:modeOfTransport', data[:mode_of_transport]) if data.key? :mode_of_transport
          root << build_element('inv:statisticalCode', data[:statistical_code]) if data.key? :statistical_code
          root << build_element('inv:specialTransaction', data[:special_transaction]) if data.key? :special_transaction

          root
        end
      end
    end
  end
end