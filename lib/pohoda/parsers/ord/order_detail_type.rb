module Pohoda
  module Parsers
    module Ord
      class OrderDetailType
        include ParserCore::BaseParser

        def order_item
          array_of_at(Ord::OrderItemType, ['ord:orderItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:order_item] = order_item.map(&:to_h_with_attrs) if has? 'ord:orderItem'

          hash
        end
      end
    end
  end
end