module Pohoda
  module Builders
    module Lst
      class ItemSellingPriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('lst:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('extId', data[:ext_id]).builder
          end
          root << build_element('lst:code', data[:code]) if data.key? :code
          root << build_element('lst:name', data[:name]) if data.key? :name
          root << build_element('lst:discountValidity', data[:discount_validity]) if data.key? :discount_validity
          root << build_element('lst:dateFrom', data[:date_from]) if data.key? :date_from
          root << build_element('lst:dateTill', data[:date_till]) if data.key? :date_till
          root << build_element('lst:priceType', data[:price_type]) if data.key? :price_type
          root << build_element('lst:margin', data[:margin]) if data.key? :margin
          root << build_element('lst:rebate', data[:rebate]) if data.key? :rebate
          root << build_element('lst:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          root << build_element('lst:calculation', data[:calculation]) if data.key? :calculation
          root << build_element('lst:rounding', data[:rounding]) if data.key? :rounding
          if data.key? :currency
            root << Typ::RefType.new('currency', data[:currency]).builder
          end
          root << build_element('lst:rate', data[:rate]) if data.key? :rate

          root
        end
      end
    end
  end
end