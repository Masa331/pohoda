module Pohoda
  module Parsers
    module Stk
      class StockType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Stk::ActionTypeType, 'stk:actionType')
        end

        def stock_header
          submodel_at(Stk::StockHeaderType, 'stk:stockHeader')
        end

        def stock_detail
          submodel_at(Stk::StockDetailType, 'stk:stockDetail')
        end

        def stock_attach
          submodel_at(Stk::StockAttachType, 'stk:stockAttach')
        end

        def stock_serial_number
          submodel_at(Stk::StockSerialNumberType, 'stk:stockSerialNumber')
        end

        def stock_price_item
          submodel_at(Stk::StockPriceItemType, 'stk:stockPriceItem')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'stk:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type.to_h_with_attrs if has? 'stk:actionType'
          hash[:stock_header] = stock_header.to_h_with_attrs if has? 'stk:stockHeader'
          hash[:stock_detail] = stock_detail.to_h_with_attrs if has? 'stk:stockDetail'
          hash[:stock_attach] = stock_attach.to_h_with_attrs if has? 'stk:stockAttach'
          hash[:stock_serial_number] = stock_serial_number.to_h_with_attrs if has? 'stk:stockSerialNumber'
          hash[:stock_price_item] = stock_price_item.to_h_with_attrs if has? 'stk:stockPriceItem'
          hash[:print] = print.to_h_with_attrs if has? 'stk:print'

          hash
        end
      end
    end
  end
end