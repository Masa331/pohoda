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

        def id_attributes
          attributes_at 'sup:id'
        end

        def ref_ad
          submodel_at(Typ::RefTypeSupplierAddress, 'sup:refAd')
        end

        def order_code
          at 'sup:orderCode'
        end

        def order_code_attributes
          attributes_at 'sup:orderCode'
        end

        def order_name
          at 'sup:orderName'
        end

        def order_name_attributes
          attributes_at 'sup:orderName'
        end

        def purchasing_price
          at 'sup:purchasingPrice'
        end

        def purchasing_price_attributes
          attributes_at 'sup:purchasingPrice'
        end

        def currency
          submodel_at(Typ::RefType, 'sup:currency')
        end

        def rate
          at 'sup:rate'
        end

        def rate_attributes
          attributes_at 'sup:rate'
        end

        def pay_vat
          at 'sup:payVAT'
        end

        def pay_vat_attributes
          attributes_at 'sup:payVAT'
        end

        def ean
          at 'sup:ean'
        end

        def ean_attributes
          attributes_at 'sup:ean'
        end

        def print_ean
          at 'sup:printEAN'
        end

        def print_ean_attributes
          attributes_at 'sup:printEAN'
        end

        def unit_ean
          at 'sup:unitEAN'
        end

        def unit_ean_attributes
          attributes_at 'sup:unitEAN'
        end

        def unit_coef_ean
          at 'sup:unitCoefEAN'
        end

        def unit_coef_ean_attributes
          attributes_at 'sup:unitCoefEAN'
        end

        def delivery_time
          at 'sup:deliveryTime'
        end

        def delivery_time_attributes
          attributes_at 'sup:deliveryTime'
        end

        def delivery_period
          submodel_at(Typ::RefType, 'sup:deliveryPeriod')
        end

        def min_quantity
          at 'sup:minQuantity'
        end

        def min_quantity_attributes
          attributes_at 'sup:minQuantity'
        end

        def unit
          at 'sup:unit'
        end

        def unit_attributes
          attributes_at 'sup:unit'
        end

        def note
          at 'sup:note'
        end

        def note_attributes
          attributes_at 'sup:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type.to_h if has? 'sup:actionType'
          hash[:id] = id if has? 'sup:id'
          hash[:id_attributes] = id_attributes if has? 'sup:id'
          hash[:ref_ad] = ref_ad.to_h if has? 'sup:refAd'
          hash[:order_code] = order_code if has? 'sup:orderCode'
          hash[:order_code_attributes] = order_code_attributes if has? 'sup:orderCode'
          hash[:order_name] = order_name if has? 'sup:orderName'
          hash[:order_name_attributes] = order_name_attributes if has? 'sup:orderName'
          hash[:purchasing_price] = purchasing_price if has? 'sup:purchasingPrice'
          hash[:purchasing_price_attributes] = purchasing_price_attributes if has? 'sup:purchasingPrice'
          hash[:currency] = currency.to_h if has? 'sup:currency'
          hash[:rate] = rate if has? 'sup:rate'
          hash[:rate_attributes] = rate_attributes if has? 'sup:rate'
          hash[:pay_vat] = pay_vat if has? 'sup:payVAT'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'sup:payVAT'
          hash[:ean] = ean if has? 'sup:ean'
          hash[:ean_attributes] = ean_attributes if has? 'sup:ean'
          hash[:print_ean] = print_ean if has? 'sup:printEAN'
          hash[:print_ean_attributes] = print_ean_attributes if has? 'sup:printEAN'
          hash[:unit_ean] = unit_ean if has? 'sup:unitEAN'
          hash[:unit_ean_attributes] = unit_ean_attributes if has? 'sup:unitEAN'
          hash[:unit_coef_ean] = unit_coef_ean if has? 'sup:unitCoefEAN'
          hash[:unit_coef_ean_attributes] = unit_coef_ean_attributes if has? 'sup:unitCoefEAN'
          hash[:delivery_time] = delivery_time if has? 'sup:deliveryTime'
          hash[:delivery_time_attributes] = delivery_time_attributes if has? 'sup:deliveryTime'
          hash[:delivery_period] = delivery_period.to_h if has? 'sup:deliveryPeriod'
          hash[:min_quantity] = min_quantity if has? 'sup:minQuantity'
          hash[:min_quantity_attributes] = min_quantity_attributes if has? 'sup:minQuantity'
          hash[:unit] = unit if has? 'sup:unit'
          hash[:unit_attributes] = unit_attributes if has? 'sup:unit'
          hash[:note] = note if has? 'sup:note'
          hash[:note_attributes] = note_attributes if has? 'sup:note'

          hash
        end
      end
    end
  end
end