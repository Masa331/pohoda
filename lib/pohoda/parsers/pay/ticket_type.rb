module Pohoda
  module Parsers
    module Pay
      class TicketType
        include ParserCore::BaseParser

        def value
          at 'pay:value'
        end

        def value_attributes
          attributes_at 'pay:value'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:value] = value if has? 'pay:value'
          hash[:value_attributes] = value_attributes if has? 'pay:value'

          hash
        end
      end
    end
  end
end