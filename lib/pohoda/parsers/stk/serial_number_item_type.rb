module Pohoda
  module Parsers
    module Stk
      class SerialNumberItemType
        include ParserCore::BaseParser

        def id
          at 'stk:id'
        end

        def serial_number
          at 'stk:serialNumber'
        end

        def count
          at 'stk:count'
        end

        def expiration
          at 'stk:expiration'
        end

        def note
          at 'stk:note'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'stk:id'
          hash[:serial_number] = serial_number if has? 'stk:serialNumber'
          hash[:count] = count if has? 'stk:count'
          hash[:expiration] = expiration if has? 'stk:expiration'
          hash[:note] = note if has? 'stk:note'

          hash
        end
      end
    end
  end
end