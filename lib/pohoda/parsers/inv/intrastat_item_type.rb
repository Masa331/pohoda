module Pohoda
  module Parsers
    module Inv
      class IntrastatItemType
        include ParserCore::BaseParser

        def date
          at 'inv:date'
        end

        def goods_code
          at 'inv:goodsCode'
        end

        def description
          at 'inv:description'
        end

        def state
          at 'inv:state'
        end

        def region
          at 'inv:region'
        end

        def state_of_origin
          at 'inv:stateOfOrigin'
        end

        def invoiced_amount
          at 'inv:invoicedAmount'
        end

        def transport_expenses
          at 'inv:transportExpenses'
        end

        def own_weight
          at 'inv:ownWeight'
        end

        def quantity
          at 'inv:quantity'
        end

        def add_unit
          at 'inv:addUnit'
        end

        def transaction
          at 'inv:transaction'
        end

        def terms_of_delivery
          at 'inv:termsOfDelivery'
        end

        def mode_of_transport
          at 'inv:modeOfTransport'
        end

        def statistical_code
          at 'inv:statisticalCode'
        end

        def special_transaction
          at 'inv:specialTransaction'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:date] = date if has? 'inv:date'
          hash[:goods_code] = goods_code if has? 'inv:goodsCode'
          hash[:description] = description if has? 'inv:description'
          hash[:state] = state if has? 'inv:state'
          hash[:region] = region if has? 'inv:region'
          hash[:state_of_origin] = state_of_origin if has? 'inv:stateOfOrigin'
          hash[:invoiced_amount] = invoiced_amount if has? 'inv:invoicedAmount'
          hash[:transport_expenses] = transport_expenses if has? 'inv:transportExpenses'
          hash[:own_weight] = own_weight if has? 'inv:ownWeight'
          hash[:quantity] = quantity if has? 'inv:quantity'
          hash[:add_unit] = add_unit if has? 'inv:addUnit'
          hash[:transaction] = transaction if has? 'inv:transaction'
          hash[:terms_of_delivery] = terms_of_delivery if has? 'inv:termsOfDelivery'
          hash[:mode_of_transport] = mode_of_transport if has? 'inv:modeOfTransport'
          hash[:statistical_code] = statistical_code if has? 'inv:statisticalCode'
          hash[:special_transaction] = special_transaction if has? 'inv:specialTransaction'

          hash
        end
      end
    end
  end
end