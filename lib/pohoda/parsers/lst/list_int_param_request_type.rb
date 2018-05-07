module Pohoda
  module Parsers
    module Lst
      class ListIntParamRequestType
        include ParserCore::BaseParser

        def request_int_param
          at 'lst:requestIntParam'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_int_param] = request_int_param if has? 'lst:requestIntParam'

          hash
        end
      end
    end
  end
end