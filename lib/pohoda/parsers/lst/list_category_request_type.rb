module Pohoda
  module Parsers
    module Lst
      class ListCategoryRequestType
        include ParserCore::BaseParser

        def request_category
          at 'lst:requestCategory'
        end

        def request_category_attributes
          attributes_at 'lst:requestCategory'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_category] = request_category if has? 'lst:requestCategory'
          hash[:request_category_attributes] = request_category_attributes if has? 'lst:requestCategory'

          hash
        end
      end
    end
  end
end