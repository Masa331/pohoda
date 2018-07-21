module Pohoda
  module Parsers
    module Lst
      class ItemSellingPriceType
        include ParserCore::BaseParser

        def id
          at 'lst:id'
        end

        def id_attributes
          attributes_at 'lst:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'lst:extId')
        end

        def code
          at 'lst:code'
        end

        def code_attributes
          attributes_at 'lst:code'
        end

        def name
          at 'lst:name'
        end

        def name_attributes
          attributes_at 'lst:name'
        end

        def discount_validity
          at 'lst:discountValidity'
        end

        def discount_validity_attributes
          attributes_at 'lst:discountValidity'
        end

        def date_from
          at 'lst:dateFrom'
        end

        def date_from_attributes
          attributes_at 'lst:dateFrom'
        end

        def date_till
          at 'lst:dateTill'
        end

        def date_till_attributes
          attributes_at 'lst:dateTill'
        end

        def price_type
          at 'lst:priceType'
        end

        def price_type_attributes
          attributes_at 'lst:priceType'
        end

        def margin
          at 'lst:margin'
        end

        def margin_attributes
          attributes_at 'lst:margin'
        end

        def rebate
          at 'lst:rebate'
        end

        def rebate_attributes
          attributes_at 'lst:rebate'
        end

        def discount_percentage
          at 'lst:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'lst:discountPercentage'
        end

        def calculation
          at 'lst:calculation'
        end

        def calculation_attributes
          attributes_at 'lst:calculation'
        end

        def rounding
          at 'lst:rounding'
        end

        def rounding_attributes
          attributes_at 'lst:rounding'
        end

        def currency
          submodel_at(Typ::RefType, 'lst:currency')
        end

        def rate
          at 'lst:rate'
        end

        def rate_attributes
          attributes_at 'lst:rate'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'lst:id'
          hash[:id_attributes] = id_attributes if has? 'lst:id'
          hash[:ext_id] = ext_id.to_h if has? 'lst:extId'
          hash[:code] = code if has? 'lst:code'
          hash[:code_attributes] = code_attributes if has? 'lst:code'
          hash[:name] = name if has? 'lst:name'
          hash[:name_attributes] = name_attributes if has? 'lst:name'
          hash[:discount_validity] = discount_validity if has? 'lst:discountValidity'
          hash[:discount_validity_attributes] = discount_validity_attributes if has? 'lst:discountValidity'
          hash[:date_from] = date_from if has? 'lst:dateFrom'
          hash[:date_from_attributes] = date_from_attributes if has? 'lst:dateFrom'
          hash[:date_till] = date_till if has? 'lst:dateTill'
          hash[:date_till_attributes] = date_till_attributes if has? 'lst:dateTill'
          hash[:price_type] = price_type if has? 'lst:priceType'
          hash[:price_type_attributes] = price_type_attributes if has? 'lst:priceType'
          hash[:margin] = margin if has? 'lst:margin'
          hash[:margin_attributes] = margin_attributes if has? 'lst:margin'
          hash[:rebate] = rebate if has? 'lst:rebate'
          hash[:rebate_attributes] = rebate_attributes if has? 'lst:rebate'
          hash[:discount_percentage] = discount_percentage if has? 'lst:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'lst:discountPercentage'
          hash[:calculation] = calculation if has? 'lst:calculation'
          hash[:calculation_attributes] = calculation_attributes if has? 'lst:calculation'
          hash[:rounding] = rounding if has? 'lst:rounding'
          hash[:rounding_attributes] = rounding_attributes if has? 'lst:rounding'
          hash[:currency] = currency.to_h if has? 'lst:currency'
          hash[:rate] = rate if has? 'lst:rate'
          hash[:rate_attributes] = rate_attributes if has? 'lst:rate'

          hash
        end
      end
    end
  end
end