module Pohoda
  module Parsers
    module Idp
      class StockItemType3
        include ParserCore::BaseParser

        def id
          at 'idp:id'
        end

        def id_attributes
          attributes_at 'idp:id'
        end

        def ids
          at 'idp:ids'
        end

        def ids_attributes
          attributes_at 'idp:ids'
        end

        def name
          at 'idp:name'
        end

        def name_attributes
          attributes_at 'idp:name'
        end

        def storage
          submodel_at(Typ::RefTypeStorage, 'idp:storage')
        end

        def price
          at 'idp:price'
        end

        def price_attributes
          attributes_at 'idp:price'
        end

        def discount_percentage
          at 'idp:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'idp:discountPercentage'
        end

        def individual_price
          at 'idp:individualPrice'
        end

        def individual_price_attributes
          attributes_at 'idp:individualPrice'
        end

        def currency
          submodel_at(Typ::RefType, 'idp:currency')
        end

        def pay_vat
          at 'idp:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'idp:payVAT'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'idp:id'
          hash[:id_attributes] = id_attributes if has? 'idp:id'
          hash[:ids] = ids if has? 'idp:ids'
          hash[:ids_attributes] = ids_attributes if has? 'idp:ids'
          hash[:name] = name if has? 'idp:name'
          hash[:name_attributes] = name_attributes if has? 'idp:name'
          hash[:storage] = storage.to_h if has? 'idp:storage'
          hash[:price] = price if has? 'idp:price'
          hash[:price_attributes] = price_attributes if has? 'idp:price'
          hash[:discount_percentage] = discount_percentage if has? 'idp:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'idp:discountPercentage'
          hash[:individual_price] = individual_price if has? 'idp:individualPrice'
          hash[:individual_price_attributes] = individual_price_attributes if has? 'idp:individualPrice'
          hash[:currency] = currency.to_h if has? 'idp:currency'
          hash[:pay_vat] = pay_vat if has? 'idp:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'idp:payVAT'

          hash
        end
      end
    end
  end
end