module Pohoda
  module Parsers
    module Idp
      class SetPricesType
        include ParserCore::BaseParser

        def stocks
          array_of_at(Idp::StockItemType, ['idp:stocks', 'idp:stockItem'])
        end

        def price_groups
          array_of_at(Idp::PriceGroupItemType, ['idp:priceGroups', 'idp:priceGroupItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stocks] = stocks.map(&:to_h_with_attrs) if has? 'idp:stocks'
          hash[:price_groups] = price_groups.map(&:to_h_with_attrs) if has? 'idp:priceGroups'

          hash
        end
      end
    end
  end
end