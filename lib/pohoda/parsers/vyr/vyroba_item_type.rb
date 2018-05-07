module Pohoda
  module Parsers
    module Vyr
      class VyrobaItemType
        include ParserCore::BaseParser

        def quantity
          at 'vyr:quantity'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'vyr:stockItem')
        end

        def expiration_date
          at 'vyr:expirationDate'
        end

        def note
          at 'vyr:note'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:quantity] = quantity if has? 'vyr:quantity'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'vyr:stockItem'
          hash[:expiration_date] = expiration_date if has? 'vyr:expirationDate'
          hash[:note] = note if has? 'vyr:note'

          hash
        end
      end
    end
  end
end