module Pohoda
  module Parsers
    module Lst
      class ItemSellingPriceType
        include ParserCore::BaseParser

        def id
          at 'lst:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'lst:extId')
        end

        def code
          at 'lst:code'
        end

        def name
          at 'lst:name'
        end

        def discount_validity
          at 'lst:discountValidity'
        end

        def date_from
          at 'lst:dateFrom'
        end

        def date_till
          at 'lst:dateTill'
        end

        def price_type
          at 'lst:priceType'
        end

        def margin
          at 'lst:margin'
        end

        def rebate
          at 'lst:rebate'
        end

        def discount_percentage
          at 'lst:discountPercentage'
        end

        def calculation
          at 'lst:calculation'
        end

        def rounding
          at 'lst:rounding'
        end

        def currency
          submodel_at(Typ::RefType, 'lst:currency')
        end

        def rate
          at 'lst:rate'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'lst:id'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'lst:extId'
          hash[:code] = code if has? 'lst:code'
          hash[:name] = name if has? 'lst:name'
          hash[:discount_validity] = discount_validity if has? 'lst:discountValidity'
          hash[:date_from] = date_from if has? 'lst:dateFrom'
          hash[:date_till] = date_till if has? 'lst:dateTill'
          hash[:price_type] = price_type if has? 'lst:priceType'
          hash[:margin] = margin if has? 'lst:margin'
          hash[:rebate] = rebate if has? 'lst:rebate'
          hash[:discount_percentage] = discount_percentage if has? 'lst:discountPercentage'
          hash[:calculation] = calculation if has? 'lst:calculation'
          hash[:rounding] = rounding if has? 'lst:rounding'
          hash[:currency] = currency.to_h_with_attrs if has? 'lst:currency'
          hash[:rate] = rate if has? 'lst:rate'

          hash
        end
      end
    end
  end
end