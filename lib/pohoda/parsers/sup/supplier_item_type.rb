module Pohoda
  module Parsers
    module Sup
      class SupplierItemType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Typ::ActionTypeItem, 'sup:actionType')
        end

        def id
          at 'sup:id'
        end

        def ref_ad
          submodel_at(Typ::RefTypeSupplierAddress, 'sup:refAd')
        end

        def order_code
          at 'sup:orderCode'
        end

        def order_name
          at 'sup:orderName'
        end

        def purchasing_price
          at 'sup:purchasingPrice'
        end

        def currency
          submodel_at(Typ::RefType, 'sup:currency')
        end

        def rate
          at 'sup:rate'
        end

        def pay_vat
          at 'sup:payVAT'
        end

        def ean
          at 'sup:ean'
        end

        def print_ean
          at 'sup:printEAN'
        end

        def unit_ean
          at 'sup:unitEAN'
        end

        def unit_coef_ean
          at 'sup:unitCoefEAN'
        end

        def delivery_time
          at 'sup:deliveryTime'
        end

        def delivery_period
          submodel_at(Typ::RefType, 'sup:deliveryPeriod')
        end

        def min_quantity
          at 'sup:minQuantity'
        end

        def unit
          at 'sup:unit'
        end

        def note
          at 'sup:note'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type.to_h_with_attrs if has? 'sup:actionType'
          hash[:id] = id if has? 'sup:id'
          hash[:ref_ad] = ref_ad.to_h_with_attrs if has? 'sup:refAd'
          hash[:order_code] = order_code if has? 'sup:orderCode'
          hash[:order_name] = order_name if has? 'sup:orderName'
          hash[:purchasing_price] = purchasing_price if has? 'sup:purchasingPrice'
          hash[:currency] = currency.to_h_with_attrs if has? 'sup:currency'
          hash[:rate] = rate if has? 'sup:rate'
          hash[:pay_vat] = pay_vat if has? 'sup:payVAT'
          hash[:ean] = ean if has? 'sup:ean'
          hash[:print_ean] = print_ean if has? 'sup:printEAN'
          hash[:unit_ean] = unit_ean if has? 'sup:unitEAN'
          hash[:unit_coef_ean] = unit_coef_ean if has? 'sup:unitCoefEAN'
          hash[:delivery_time] = delivery_time if has? 'sup:deliveryTime'
          hash[:delivery_period] = delivery_period.to_h_with_attrs if has? 'sup:deliveryPeriod'
          hash[:min_quantity] = min_quantity if has? 'sup:minQuantity'
          hash[:unit] = unit if has? 'sup:unit'
          hash[:note] = note if has? 'sup:note'

          hash
        end
      end
    end
  end
end