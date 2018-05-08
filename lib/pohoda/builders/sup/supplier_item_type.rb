module Pohoda
  module Builders
    module Sup
      class SupplierItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('sup:actionType', data[:action_type]).builder
          end
          root << build_element('sup:id', data[:id]) if data.key? :id
          if data.key? :ref_ad
            root << Typ::RefTypeSupplierAddress.new('sup:refAd', data[:ref_ad]).builder
          end
          root << build_element('sup:orderCode', data[:order_code]) if data.key? :order_code
          root << build_element('sup:orderName', data[:order_name]) if data.key? :order_name
          root << build_element('sup:purchasingPrice', data[:purchasing_price]) if data.key? :purchasing_price
          if data.key? :currency
            root << Typ::RefType.new('sup:currency', data[:currency]).builder
          end
          root << build_element('sup:rate', data[:rate]) if data.key? :rate
          root << build_element('sup:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('sup:ean', data[:ean]) if data.key? :ean
          root << build_element('sup:printEAN', data[:print_ean]) if data.key? :print_ean
          root << build_element('sup:unitEAN', data[:unit_ean]) if data.key? :unit_ean
          root << build_element('sup:unitCoefEAN', data[:unit_coef_ean]) if data.key? :unit_coef_ean
          root << build_element('sup:deliveryTime', data[:delivery_time]) if data.key? :delivery_time
          if data.key? :delivery_period
            root << Typ::RefType.new('sup:deliveryPeriod', data[:delivery_period]).builder
          end
          root << build_element('sup:minQuantity', data[:min_quantity]) if data.key? :min_quantity
          root << build_element('sup:unit', data[:unit]) if data.key? :unit
          root << build_element('sup:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end