module Pohoda
  module Builders
    module Inv
      class IntrastatItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('inv:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('inv:goodsCode', data[:goods_code], data[:goods_code_attributes]) if data.key? :goods_code
          root << build_element('inv:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('inv:state', data[:state], data[:state_attributes]) if data.key? :state
          root << build_element('inv:region', data[:region], data[:region_attributes]) if data.key? :region
          root << build_element('inv:stateOfOrigin', data[:state_of_origin], data[:state_of_origin_attributes]) if data.key? :state_of_origin
          root << build_element('inv:invoicedAmount', data[:invoiced_amount], data[:invoiced_amount_attributes]) if data.key? :invoiced_amount
          root << build_element('inv:transportExpenses', data[:transport_expenses], data[:transport_expenses_attributes]) if data.key? :transport_expenses
          root << build_element('inv:ownWeight', data[:own_weight], data[:own_weight_attributes]) if data.key? :own_weight
          root << build_element('inv:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          root << build_element('inv:addUnit', data[:add_unit], data[:add_unit_attributes]) if data.key? :add_unit
          root << build_element('inv:transaction', data[:transaction], data[:transaction_attributes]) if data.key? :transaction
          root << build_element('inv:termsOfDelivery', data[:terms_of_delivery], data[:terms_of_delivery_attributes]) if data.key? :terms_of_delivery
          root << build_element('inv:modeOfTransport', data[:mode_of_transport], data[:mode_of_transport_attributes]) if data.key? :mode_of_transport
          root << build_element('inv:statisticalCode', data[:statistical_code], data[:statistical_code_attributes]) if data.key? :statistical_code
          root << build_element('inv:specialTransaction', data[:special_transaction], data[:special_transaction_attributes]) if data.key? :special_transaction

          root
        end
      end
    end
  end
end