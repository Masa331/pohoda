module Pohoda
  module Parsers
    module Stk
      class SerialNumberItemType
        include ParserCore::BaseParser

        def id
          at 'stk:id'
        end

        def id_attributes
          attributes_at 'stk:id'
        end

        def serial_number
          at 'stk:serialNumber'
        end

        def serial_number_attributes
          attributes_at 'stk:serialNumber'
        end

        def count
          at 'stk:count'
        end

        def count_attributes
          attributes_at 'stk:count'
        end

        def expiration
          at 'stk:expiration'
        end

        def expiration_attributes
          attributes_at 'stk:expiration'
        end

        def note
          at 'stk:note'
        end

        def note_attributes
          attributes_at 'stk:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'stk:id'
          hash[:id_attributes] = id_attributes if has? 'stk:id'
          hash[:serial_number] = serial_number if has? 'stk:serialNumber'
          hash[:serial_number_attributes] = serial_number_attributes if has? 'stk:serialNumber'
          hash[:count] = count if has? 'stk:count'
          hash[:count_attributes] = count_attributes if has? 'stk:count'
          hash[:expiration] = expiration if has? 'stk:expiration'
          hash[:expiration_attributes] = expiration_attributes if has? 'stk:expiration'
          hash[:note] = note if has? 'stk:note'
          hash[:note_attributes] = note_attributes if has? 'stk:note'

          hash
        end
      end
    end
  end
end