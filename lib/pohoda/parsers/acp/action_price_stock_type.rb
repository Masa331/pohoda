module Pohoda
  module Parsers
    module Acp
      class ActionPriceStockType
        include ParserCore::BaseParser

        def price
          at 'acp:price'
        end

        def price_attributes
          attributes_at 'acp:price'
        end

        def discount_percentage
          at 'acp:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'acp:discountPercentage'
        end

        def fixed_price
          at 'acp:fixedPrice'
        end

        def fixed_price_attributes
          attributes_at 'acp:fixedPrice'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:price] = price if has? 'acp:price'
          hash[:price_attributes] = price_attributes if has? 'acp:price'
          hash[:discount_percentage] = discount_percentage if has? 'acp:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'acp:discountPercentage'
          hash[:fixed_price] = fixed_price if has? 'acp:fixedPrice'
          hash[:fixed_price_attributes] = fixed_price_attributes if has? 'acp:fixedPrice'

          hash
        end
      end
    end
  end
end