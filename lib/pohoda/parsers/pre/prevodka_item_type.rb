module Pohoda
  module Parsers
    module Pre
      class PrevodkaItemType
        include ParserCore::BaseParser

        def quantity
          at 'pre:quantity'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'pre:stockItem')
        end

        def note
          at 'pre:note'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:quantity] = quantity if has? 'pre:quantity'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'pre:stockItem'
          hash[:note] = note if has? 'pre:note'

          hash
        end
      end
    end
  end
end