module Pohoda
  module Parsers
    module Pre
      class PrevodkaItemType
        include ParserCore::BaseParser

        def quantity
          at 'pre:quantity'
        end

        def quantity_attributes
          attributes_at 'pre:quantity'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'pre:stockItem')
        end

        def note
          at 'pre:note'
        end

        def note_attributes
          attributes_at 'pre:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:quantity] = quantity if has? 'pre:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'pre:quantity'
          hash[:stock_item] = stock_item.to_h if has? 'pre:stockItem'
          hash[:note] = note if has? 'pre:note'
          hash[:note_attributes] = note_attributes if has? 'pre:note'

          hash
        end
      end
    end
  end
end