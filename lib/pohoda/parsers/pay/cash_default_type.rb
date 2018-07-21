module Pohoda
  module Parsers
    module Pay
      class CashDefaultType
        include ParserCore::BaseParser

        def default
          at 'pay:default'
        end

        def default_attributes
          attributes_at 'pay:default'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:default] = default if has? 'pay:default'
          hash[:default_attributes] = default_attributes if has? 'pay:default'

          hash
        end
      end
    end
  end
end