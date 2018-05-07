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

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'sup:stockItem'
          hash[:suppliers] = suppliers if has? 'sup:suppliers'

          hash
        end
      end
    end
  end
end