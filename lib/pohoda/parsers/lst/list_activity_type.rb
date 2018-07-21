module Pohoda
  module Parsers
    module Lst
      class ListActivityType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_activity
          submodel_at(Lst::ItemNameType, 'lst:itemActivity')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_activity] = item_activity.to_h if has? 'lst:itemActivity'

          hash
          super.merge(hash)
        end
      end
    end
  end
end