module Pohoda
  module Parsers
    module Stk
      class StockSerialNumberType
        include ParserCore::BaseParser

        def serial_number_item
          array_of_at(Stk::SerialNumberItemType, ['stk:serialNumberItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:serial_number_item] = serial_number_item.map(&:to_h) if has? 'stk:serialNumberItem'

          hash
        end
      end
    end
  end
end