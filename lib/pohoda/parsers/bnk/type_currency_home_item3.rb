module Pohoda
  module Parsers
    module Bnk
      class TypeCurrencyHomeItem3
        include ParserCore::BaseParser

        def unit_price
          at 'bnk:unitPrice'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:unit_price] = unit_price if has? 'bnk:unitPrice'

          hash
        end
      end
    end
  end
end