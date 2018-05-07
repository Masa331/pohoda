module Pohoda
  module Parsers
    module Lst
      class ListCategoryRequestType
        include ParserCore::BaseParser

        def request_category
          at 'lst:requestCategory'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_category] = request_category if has? 'lst:requestCategory'

          hash
        end
      end
    end
  end
end