module Pohoda
  module Builders
    module Sup
      class SupplierItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('sup:actionType', data[:action_type]).builder
          end
          root << build_element('sup:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ref_ad
            root << Typ::RefTypeSupplierAddress.new('sup:refAd', data[:ref_ad]).builder
          end
          root << build_element('sup:orderCode', data[:order_code], data[:order_code_attributes]) if data.key? :order_code
          root << build_element('sup:orderName', data[:order_name], data[:order_name_attributes]) if data.key? :order_name
          root << build_element('sup:purchasingPrice', data[:purchasing_price], data[:purchasing_price_attributes]) if data.key? :purchasing_price
          if data.key? :currency
            root << Typ::RefType.new('sup:currency', data[:currency]).builder
          end
          root << build_element('sup:rate', data[:rate], data[:rate_attributes]) if data.key? :rate
          root << build_element('sup:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          root << build_element('sup:ean', data[:ean], data[:ean_attributes]) if data.key? :ean
          root << build_element('sup:printEAN', data[:print_ean], data[:print_ean_attributes]) if data.key? :print_ean
          root << build_element('sup:unitEAN', data[:unit_ean], data[:unit_ean_attributes]) if data.key? :unit_ean
          root << build_element('sup:unitCoefEAN', data[:unit_coef_ean], data[:unit_coef_ean_attributes]) if data.key? :unit_coef_ean
          root << build_element('sup:deliveryTime', data[:delivery_time], data[:delivery_time_attributes]) if data.key? :delivery_time
          if data.key? :delivery_period
            root << Typ::RefType.new('sup:deliveryPeriod', data[:delivery_period]).builder
          end
          root << build_element('sup:minQuantity', data[:min_quantity], data[:min_quantity_attributes]) if data.key? :min_quantity
          root << build_element('sup:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('sup:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end