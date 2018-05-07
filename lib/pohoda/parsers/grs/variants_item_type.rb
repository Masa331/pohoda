module Pohoda
  module Parsers
    module Grs
      class VariantsItemType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Typ::ActionTypeItemAddDelete, 'grs:actionType')
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'grs:stockItem')
        end

        def order
          at 'grs:order'
        end

        def name
          at 'grs:name'
        end

        def quantity
          at 'grs:quantity'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type.to_h_with_attrs if has? 'grs:actionType'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'grs:stockItem'
          hash[:order] = order if has? 'grs:order'
          hash[:name] = name if has? 'grs:name'
          hash[:quantity] = quantity if has? 'grs:quantity'

          hash
        end
      end
    end
  end
end