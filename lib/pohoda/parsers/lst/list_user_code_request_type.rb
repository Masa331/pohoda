module Pohoda
  module Parsers
    module Lst
      class ListUserCodeRequestType
        include ParserCore::BaseParser

        def request_user_code
          at 'lst:requestUserCode'
        end

        def request_user_code_attributes
          attributes_at 'lst:requestUserCode'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_user_code] = request_user_code if has? 'lst:requestUserCode'
          hash[:request_user_code_attributes] = request_user_code_attributes if has? 'lst:requestUserCode'

          hash
        end
      end
    end
  end
end