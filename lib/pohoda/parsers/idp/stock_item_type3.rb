module Pohoda
  module Parsers
    module Idp
      class StockItemType3
        include ParserCore::BaseParser

        def id
          at 'idp:id'
        end

        def ids
          at 'idp:ids'
        end

        def name
          at 'idp:name'
        end

        def storage
          submodel_at(Typ::RefTypeStorage, 'idp:storage')
        end

        def price
          at 'idp:price'
        end

        def discount_percentage
          at 'idp:discountPercentage'
        end

        def individual_price
          at 'idp:individualPrice'
        end

        def currency
          submodel_at(Typ::RefType, 'idp:currency')
        end

        def pay_vat
          at 'idp:payVAT'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'idp:id'
          hash[:ids] = ids if has? 'idp:ids'
          hash[:name] = name if has? 'idp:name'
          hash[:storage] = storage.to_h_with_attrs if has? 'idp:storage'
          hash[:price] = price if has? 'idp:price'
          hash[:discount_percentage] = discount_percentage if has? 'idp:discountPercentage'
          hash[:individual_price] = individual_price if has? 'idp:individualPrice'
          hash[:currency] = currency.to_h_with_attrs if has? 'idp:currency'
          hash[:pay_vat] = pay_vat if has? 'idp:payVAT'

          hash
        end
      end
    end
  end
end