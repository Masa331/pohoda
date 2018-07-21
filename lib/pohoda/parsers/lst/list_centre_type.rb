module Pohoda
  module Parsers
    module Lst
      class ListCentreType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_centre
          submodel_at(Lst::ItemNameType, 'lst:itemCentre')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_centre] = item_centre.to_h if has? 'lst:itemCentre'

          hash
          super.merge(hash)
        end
      end
    end
  end
end