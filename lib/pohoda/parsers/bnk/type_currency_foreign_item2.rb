module Pohoda
  module Parsers
    module Bnk
      class TypeCurrencyForeignItem2
        include ParserCore::BaseParser

        def unit_price
          at 'bnk:unitPrice'
        end

        def unit_price_attributes
          attributes_at 'bnk:unitPrice'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:unit_price] = unit_price if has? 'bnk:unitPrice'
          hash[:unit_price_attributes] = unit_price_attributes if has? 'bnk:unitPrice'

          hash
        end
      end
    end
  end
end