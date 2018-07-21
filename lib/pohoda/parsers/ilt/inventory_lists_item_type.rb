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

        def code_attributes
          attributes_at 'ilt:code'
        end

        def text
          at 'ilt:text'
        end

        def text_attributes
          attributes_at 'ilt:text'
        end

        def quantity
          at 'ilt:quantity'
        end

        def quantity_attributes
          attributes_at 'ilt:quantity'
        end

        def unit
          at 'ilt:unit'
        end

        def unit_attributes
          attributes_at 'ilt:unit'
        end

        def is_delivered
          at 'ilt:isDelivered'
        end

        def is_delivered_attributes
          attributes_at 'ilt:isDelivered'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:stock_item] = stock_item.to_h if has? 'ilt:stockItem'
          hash[:code] = code if has? 'ilt:code'
          hash[:code_attributes] = code_attributes if has? 'ilt:code'
          hash[:text] = text if has? 'ilt:text'
          hash[:text_attributes] = text_attributes if has? 'ilt:text'
          hash[:quantity] = quantity if has? 'ilt:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'ilt:quantity'
          hash[:unit] = unit if has? 'ilt:unit'
          hash[:unit_attributes] = unit_attributes if has? 'ilt:unit'
          hash[:is_delivered] = is_delivered if has? 'ilt:isDelivered'
          hash[:is_delivered_attributes] = is_delivered_attributes if has? 'ilt:isDelivered'

          hash
        end
      end
    end
  end
end