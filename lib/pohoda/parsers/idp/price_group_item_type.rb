module Pohoda
  module Parsers
    module Idp
      class PriceGroupItemType
        include ParserCore::BaseParser

        def id
          at 'idp:id'
        end

        def id_attributes
          attributes_at 'idp:id'
        end

        def name
          at 'idp:name'
        end

        def name_attributes
          attributes_at 'idp:name'
        end

        def description
          at 'idp:description'
        end

        def description_attributes
          attributes_at 'idp:description'
        end

        def discount_percentage
          at 'idp:discountPercentage'
        end

        def discount_percentage_attributes
          attributes_at 'idp:discountPercentage'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'idp:id'
          hash[:id_attributes] = id_attributes if has? 'idp:id'
          hash[:name] = name if has? 'idp:name'
          hash[:name_attributes] = name_attributes if has? 'idp:name'
          hash[:description] = description if has? 'idp:description'
          hash[:description_attributes] = description_attributes if has? 'idp:description'
          hash[:discount_percentage] = discount_percentage if has? 'idp:discountPercentage'
          hash[:discount_percentage_attributes] = discount_percentage_attributes if has? 'idp:discountPercentage'

          hash
        end
      end
    end
  end
end