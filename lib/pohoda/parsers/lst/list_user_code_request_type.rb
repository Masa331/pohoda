module Pohoda
  module Parsers
    module Lst
      class ListUserCodeRequestType
        include ParserCore::BaseParser

        def request_user_code
          at 'lst:requestUserCode'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_user_code] = request_user_code if has? 'lst:requestUserCode'

          hash
        end
      end
    end
  end
end