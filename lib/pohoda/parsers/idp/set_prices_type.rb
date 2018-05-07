module Pohoda
  module Parsers
    module Idp
      class SetPricesType
        include ParserCore::BaseParser

        def stocks
          submodel_at(Idp::StocksType, 'idp:stocks')
        end

        def price_groups
          submodel_at(Idp::PriceGroupsType, 'idp:priceGroups')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:stocks] = stocks.to_h_with_attrs if has? 'idp:stocks'
          hash[:price_groups] = price_groups.to_h_with_attrs if has? 'idp:priceGroups'

          hash
        end
      end
    end
  end
end