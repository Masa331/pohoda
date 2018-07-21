module Pohoda
  module Parsers
    module Vyr
      class VyrobaItemType
        include ParserCore::BaseParser

        def quantity
          at 'vyr:quantity'
        end

        def quantity_attributes
          attributes_at 'vyr:quantity'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'vyr:stockItem')
        end

        def expiration_date
          at 'vyr:expirationDate'
        end

        def expiration_date_attributes
          attributes_at 'vyr:expirationDate'
        end

        def note
          at 'vyr:note'
        end

        def note_attributes
          attributes_at 'vyr:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:quantity] = quantity if has? 'vyr:quantity'
          hash[:quantity_attributes] = quantity_attributes if has? 'vyr:quantity'
          hash[:stock_item] = stock_item.to_h if has? 'vyr:stockItem'
          hash[:expiration_date] = expiration_date if has? 'vyr:expirationDate'
          hash[:expiration_date_attributes] = expiration_date_attributes if has? 'vyr:expirationDate'
          hash[:note] = note if has? 'vyr:note'
          hash[:note_attributes] = note_attributes if has? 'vyr:note'

          hash
        end
      end
    end
  end
end