module Pohoda
  module Parsers
    module Lst
      class ListActivityType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_activity
          at 'lst:itemActivity'
        end

        def item_activity_attributes
          attributes_at 'lst:itemActivity'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_activity] = item_activity if has? 'lst:itemActivity'
          hash[:item_activity_attributes] = item_activity_attributes if has? 'lst:itemActivity'

          hash
          super.merge(hash)
        end
      end
    end
  end
end