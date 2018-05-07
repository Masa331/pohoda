module Pohoda
  module Parsers
    module Stk
      class InstrastatType
        include ParserCore::BaseParser

        def goods_code
          at 'stk:goodsCode'
        end

        def description
          at 'stk:description'
        end

        def statistic
          at 'stk:statistic'
        end

        def unit
          at 'stk:unit'
        end

        def coefficient
          at 'stk:coefficient'
        end

        def country
          at 'stk:country'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:goods_code] = goods_code if has? 'stk:goodsCode'
          hash[:description] = description if has? 'stk:description'
          hash[:statistic] = statistic if has? 'stk:statistic'
          hash[:unit] = unit if has? 'stk:unit'
          hash[:coefficient] = coefficient if has? 'stk:coefficient'
          hash[:country] = country if has? 'stk:country'

          hash
        end
      end
    end
  end
end