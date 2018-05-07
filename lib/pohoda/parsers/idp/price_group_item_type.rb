module Pohoda
  module Parsers
    module Idp
      class PriceGroupItemType
        include ParserCore::BaseParser

        def id
          at 'idp:id'
        end

        def name
          at 'idp:name'
        end

        def description
          at 'idp:description'
        end

        def discount_percentage
          at 'idp:discountPercentage'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'idp:id'
          hash[:name] = name if has? 'idp:name'
          hash[:description] = description if has? 'idp:description'
          hash[:discount_percentage] = discount_percentage if has? 'idp:discountPercentage'

          hash
        end
      end
    end
  end
end