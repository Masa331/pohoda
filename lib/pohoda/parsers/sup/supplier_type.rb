module Pohoda
  module Parsers
    module Sup
      class SupplierType
        include ParserCore::BaseParser

        def stock_item
          submodel_at(Typ::StockItemType, 'sup:stockItem')
        end

        def suppliers
          at 'sup:suppliers'
        end

        def suppliers_attributes
          attributes_at 'sup:suppliers'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:stock_item] = stock_item.to_h if has? 'sup:stockItem'
          hash[:suppliers] = suppliers if has? 'sup:suppliers'
          hash[:suppliers_attributes] = suppliers_attributes if has? 'sup:suppliers'

          hash
        end
      end
    end
  end
end