module Pohoda
  module Parsers
    module Inv
      class IntrastatItemType
        include ParserCore::BaseParser

        def date
          at 'inv:date'
        end

        def date_attributes
          attributes_at 'inv:date'
        end

        def goods_code
          at 'inv:goodsCode'
        end

        def goods_code_attributes
          attributes_at 'inv:goodsCode'
        end

        def description
          at 'inv:description'
        end

        def description_attributes
          attributes_at 'inv:description'
        end

        def state
          at 'inv:state'
        end

        def state_attributes
          attributes_at 'inv:state'
        end

        def region
          at 'inv:region'
        end

        def region_attributes
          attributes_at 'inv:region'
        end

        def state_of_origin
          at 'inv:stateOfOrigin'
        end

        def state_of_origin_attributes
          attributes_at 'inv:stateOfOrigin'
        end

        def invoiced_amount
          at 'inv:invoicedAmount'
        end

        def invoiced_amount_attributes
          attributes_at 'inv:invoicedAmount'
        end

        def transport_expenses
          at 'inv:transportExpenses'
        end

        def transport_expenses_attributes
          attributes_at 'inv:transportExpenses'
        end

        def own_weight
          at 'inv:ownWeight'
        end

        def own_weight_attributes
          attributes_at 'inv:ownWeight'
        end

        def quantity
          at 'inv:quantity'
        end

        def quantity_attributes
          attributes_at 'inv:quantity'
        end

        def add_unit
          at 'inv:addUnit'
        end

        def add_unit_attributes
          attributes_at 'inv:addUnit'
        end

        def transaction
          at 'inv:transaction'
        end

        def transaction_attributes
          attributes_at 'inv:transaction'
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

        def statistical_code
          at 'inv:statisticalCode'
        end

        def statistical_code_attributes
          attributes_at 'inv:statisticalCode'
        end

        def special_transaction
          at 'inv:specialTransaction'
        end

        def special_transaction_attributes
          attributes_at 'inv:specialTransaction'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:date] = date if has? 'inv:date'
          hash[:date_attributes] = date_attributes if has? 'inv:date'
          hash[:goods_code] = goods_code if has? 'inv:goodsCode'
          hash[:goods_code_attributes] = goods_code_attributes if has? 'inv:goodsCode'
          hash[:description] = description if has? 'inv:description'
          hash[:description_attributes] = description_attributes if has? 'inv:description'
          hash[:state] = state if has? 'inv:state'
          hash[:state_attributes] = state_attributes if has? 'inv:state'
          hash[:region] = region if has? 'inv:region'
          hash[:region_attributes] = region_attributes if has? 'inv:region'
          hash[:state_of_origin] = state_of_origin if has? 'inv:stateOfOrigin'
          hash[:state_of_origin_attributes] = state_of_origin_attributes if has? 'inv:stateOfOrigin'
          hash[:invoiced_amount] = invoiced_amount if has? 'inv:invoicedAmount'
          hash[:invoiced_amount_attributes] = invoiced_amount_attributes if has? 'inv:invoicedAmount'
          hash[:transport_expenses] = transport_expenses if has? 'inv:transportExpenses'
          hash[:transport_expenses_attributes] = transport_expenses_attributes if has? 'inv:transportExpenses'
          hash[:own_weight] = own_weight if has? 'inv:ownWeight'
          hash[:own_weight_attributes] = own_weight_attributes if has? 'inv:ownWeight'
          hash[:quantity] = quantity if has? 'inv:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'inv:quantity'
          hash[:add_unit] = add_unit if has? 'inv:addUnit'
          hash[:add_unit_attributes] = add_unit_attributes if has? 'inv:addUnit'
          hash[:transaction] = transaction if has? 'inv:transaction'
          hash[:transaction_attributes] = transaction_attributes if has? 'inv:transaction'
          hash[:terms_of_delivery] = terms_of_delivery if has? 'inv:termsOfDelivery'
          hash[:terms_of_delivery_attributes] = terms_of_delivery_attributes if has? 'inv:termsOfDelivery'
          hash[:mode_of_transport] = mode_of_transport if has? 'inv:modeOfTransport'
          hash[:mode_of_transport_attributes] = mode_of_transport_attributes if has? 'inv:modeOfTransport'
          hash[:statistical_code] = statistical_code if has? 'inv:statisticalCode'
          hash[:statistical_code_attributes] = statistical_code_attributes if has? 'inv:statisticalCode'
          hash[:special_transaction] = special_transaction if has? 'inv:specialTransaction'
          hash[:special_transaction_attributes] = special_transaction_attributes if has? 'inv:specialTransaction'

          hash
        end
      end
    end
  end
end