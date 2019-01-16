module Pohoda
  module Parsers
    module Lst
      class ListCentreType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_centre
          at 'lst:itemCentre'
        end

        def item_centre_attributes
          attributes_at 'lst:itemCentre'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_centre] = item_centre if has? 'lst:itemCentre'
          hash[:item_centre_attributes] = item_centre_attributes if has? 'lst:itemCentre'

          hash
          super.merge(hash)
        end
      end
    end
  end
end