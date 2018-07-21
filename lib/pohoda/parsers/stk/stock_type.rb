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
          array_of_at(Stk::StockItemType, ['stk:stockDetail', 'stk:stockItem'])
        end

        def stock_attach
          array_of_at(Stk::AttachItemType, ['stk:stockAttach', 'stk:attachItem'])
        end

        def stock_serial_number
          array_of_at(Stk::SerialNumberItemType, ['stk:stockSerialNumber', 'stk:serialNumberItem'])
        end

        def stock_price_item
          array_of_at(Typ::StockPriceType, ['stk:stockPriceItem', 'stk:stockPrice'])
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['stk:print', 'prn:printerSettings'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type.to_h if has? 'stk:actionType'
          hash[:stock_header] = stock_header.to_h if has? 'stk:stockHeader'
          hash[:stock_detail] = stock_detail.map(&:to_h) if has? 'stk:stockDetail'
          hash[:stock_attach] = stock_attach.map(&:to_h) if has? 'stk:stockAttach'
          hash[:stock_serial_number] = stock_serial_number.map(&:to_h) if has? 'stk:stockSerialNumber'
          hash[:stock_price_item] = stock_price_item.map(&:to_h) if has? 'stk:stockPriceItem'
          hash[:print] = print.map(&:to_h) if has? 'stk:print'

          hash
        end
      end
    end
  end
end