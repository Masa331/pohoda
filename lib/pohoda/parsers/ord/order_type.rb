module Pohoda
  module Parsers
    module Ord
      class OrderType
        include ParserCore::BaseParser

        def action_type
          at 'ord:actionType'
        end

        def order_header
          submodel_at(Ord::OrderHeaderType, 'ord:orderHeader')
        end

        def order_detail
          array_of_at(Ord::OrderItemType, ['ord:orderDetail', 'ord:orderItem'])
        end

        def order_summary
          submodel_at(Ord::OrderSummaryType, 'ord:orderSummary')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['ord:print', 'prn:printerSettings'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type if has? 'ord:actionType'
          hash[:order_header] = order_header.to_h_with_attrs if has? 'ord:orderHeader'
          hash[:order_detail] = order_detail.map(&:to_h_with_attrs) if has? 'ord:orderDetail'
          hash[:order_summary] = order_summary.to_h_with_attrs if has? 'ord:orderSummary'
          hash[:print] = print.map(&:to_h_with_attrs) if has? 'ord:print'

          hash
        end
      end
    end
  end
end