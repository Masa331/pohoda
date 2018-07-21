module Pohoda
  module Parsers
    module Stk
      class InstrastatType
        include ParserCore::BaseParser

        def goods_code
          at 'stk:goodsCode'
        end

        def goods_code_attributes
          attributes_at 'stk:goodsCode'
        end

        def description
          at 'stk:description'
        end

        def description_attributes
          attributes_at 'stk:description'
        end

        def statistic
          at 'stk:statistic'
        end

        def statistic_attributes
          attributes_at 'stk:statistic'
        end

        def unit
          at 'stk:unit'
        end

        def unit_attributes
          attributes_at 'stk:unit'
        end

        def coefficient
          at 'stk:coefficient'
        end

        def coefficient_attributes
          attributes_at 'stk:coefficient'
        end

        def country
          at 'stk:country'
        end

        def country_attributes
          attributes_at 'stk:country'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:goods_code] = goods_code if has? 'stk:goodsCode'
          hash[:goods_code_attributes] = goods_code_attributes if has? 'stk:goodsCode'
          hash[:description] = description if has? 'stk:description'
          hash[:description_attributes] = description_attributes if has? 'stk:description'
          hash[:statistic] = statistic if has? 'stk:statistic'
          hash[:statistic_attributes] = statistic_attributes if has? 'stk:statistic'
          hash[:unit] = unit if has? 'stk:unit'
          hash[:unit_attributes] = unit_attributes if has? 'stk:unit'
          hash[:coefficient] = coefficient if has? 'stk:coefficient'
          hash[:coefficient_attributes] = coefficient_attributes if has? 'stk:coefficient'
          hash[:country] = country if has? 'stk:country'
          hash[:country_attributes] = country_attributes if has? 'stk:country'

          hash
        end
      end
    end
  end
end