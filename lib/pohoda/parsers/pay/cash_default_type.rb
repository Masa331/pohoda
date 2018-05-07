module Pohoda
  module Parsers
    module Pay
      class CashDefaultType
        include ParserCore::BaseParser

        def default
          at 'pay:default'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:default] = default if has? 'pay:default'

          hash
        end
      end
    end
  end
end