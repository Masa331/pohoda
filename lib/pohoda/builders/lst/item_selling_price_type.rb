module Pohoda
  module Builders
    module Lst
      class ItemSellingPriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('lst:extId', data[:ext_id]).builder
          end
          root << build_element('lst:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('lst:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('lst:discountValidity', data[:discount_validity], data[:discount_validity_attributes]) if data.key? :discount_validity
          root << build_element('lst:dateFrom', data[:date_from], data[:date_from_attributes]) if data.key? :date_from
          root << build_element('lst:dateTill', data[:date_till], data[:date_till_attributes]) if data.key? :date_till
          root << build_element('lst:priceType', data[:price_type], data[:price_type_attributes]) if data.key? :price_type
          root << build_element('lst:margin', data[:margin], data[:margin_attributes]) if data.key? :margin
          root << build_element('lst:rebate', data[:rebate], data[:rebate_attributes]) if data.key? :rebate
          root << build_element('lst:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          root << build_element('lst:calculation', data[:calculation], data[:calculation_attributes]) if data.key? :calculation
          root << build_element('lst:rounding', data[:rounding], data[:rounding_attributes]) if data.key? :rounding
          if data.key? :currency
            root << Typ::RefType.new('lst:currency', data[:currency]).builder
          end
          root << build_element('lst:rate', data[:rate], data[:rate_attributes]) if data.key? :rate

          root
        end
      end
    end
  end
end