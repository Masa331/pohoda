module Pohoda
  module Parsers
    module Stk
      class StockSerialNumberType
        include ParserCore::BaseParser

        def serial_number_item
          array_of_at(Stk::SerialNumberItemType, ['stk:serialNumberItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:serial_number_item] = serial_number_item.map(&:to_h_with_attrs) if has? 'stk:serialNumberItem'

          hash
        end
      end
    end
  end
end