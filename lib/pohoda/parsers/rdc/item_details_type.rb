module Pohoda
  module Parsers
    module Rdc
      class ItemDetailsType
        include ParserCore::BaseParser

        def item
          array_of_at(Rdc::ItemType, ['rdc:item'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item] = item.map(&:to_h) if has? 'rdc:item'

          hash
        end
      end
    end
  end
end