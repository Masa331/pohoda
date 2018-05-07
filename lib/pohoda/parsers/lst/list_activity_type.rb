module Pohoda
  module Parsers
    module Lst
      class ListActivityType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_activity
          submodel_at(Lst::ItemNameType, 'lst:itemActivity')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_activity] = item_activity.to_h_with_attrs if has? 'lst:itemActivity'

          hash
          super.merge(hash)
        end
      end
    end
  end
end