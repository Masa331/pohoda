module Pohoda
  module Parsers
    module Acp
      class ActionPriceStockType
        include ParserCore::BaseParser

        def price
          at 'acp:price'
        end

        def discount_percentage
          at 'acp:discountPercentage'
        end

        def fixed_price
          at 'acp:fixedPrice'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:price] = price if has? 'acp:price'
          hash[:discount_percentage] = discount_percentage if has? 'acp:discountPercentage'
          hash[:fixed_price] = fixed_price if has? 'acp:fixedPrice'

          hash
        end
      end
    end
  end
end