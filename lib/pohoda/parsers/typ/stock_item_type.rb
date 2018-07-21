module Pohoda
  module Parsers
    module Typ
      class StockItemType
        include ParserCore::BaseParser

        def store
          submodel_at(Typ::RefType, 'typ:store')
        end

        def stock_item
          submodel_at(Typ::StockRefType, 'typ:stockItem')
        end

        def serial_number
          at 'typ:serialNumber'
        end

        def serial_number_attributes
          attributes_at 'typ:serialNumber'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:store] = store.to_h if has? 'typ:store'
          hash[:stock_item] = stock_item.to_h if has? 'typ:stockItem'
          hash[:serial_number] = serial_number if has? 'typ:serialNumber'
          hash[:serial_number_attributes] = serial_number_attributes if has? 'typ:serialNumber'

          hash
        end
      end
    end
  end
end