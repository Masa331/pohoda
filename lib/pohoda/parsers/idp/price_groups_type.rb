module Pohoda
  module Parsers
    module Idp
      class PriceGroupsType
        include ParserCore::BaseParser

        def price_group_item
          array_of_at(Idp::PriceGroupItemType, ['idp:priceGroupItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:price_group_item] = price_group_item.map(&:to_h) if has? 'idp:priceGroupItem'

          hash
        end
      end
    end
  end
end