module Pohoda
  module Parsers
    module Ilt
      class InventoryListsItemType
        include ParserCore::BaseParser

        def stock_item
          submodel_at(Typ::StockItemType, 'ilt:stockItem')
        end

        def code
          at 'ilt:code'
        end

        def text
          at 'ilt:text'
        end

        def quantity
          at 'ilt:quantity'
        end

        def unit
          at 'ilt:unit'
        end

        def is_delivered
          at 'ilt:isDelivered'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'ilt:stockItem'
          hash[:code] = code if has? 'ilt:code'
          hash[:text] = text if has? 'ilt:text'
          hash[:quantity] = quantity if has? 'ilt:quantity'
          hash[:unit] = unit if has? 'ilt:unit'
          hash[:is_delivered] = is_delivered if has? 'ilt:isDelivered'

          hash
        end
      end
    end
  end
end