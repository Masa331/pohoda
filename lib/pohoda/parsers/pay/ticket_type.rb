module Pohoda
  module Parsers
    module Pay
      class TicketType
        include ParserCore::BaseParser

        def value
          at 'pay:value'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:value] = value if has? 'pay:value'

          hash
        end
      end
    end
  end
end