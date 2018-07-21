module Pohoda
  module Parsers
    module Lst
      class ListIntParamRequestType
        include ParserCore::BaseParser

        def request_int_param
          at 'lst:requestIntParam'
        end

        def request_int_param_attributes
          attributes_at 'lst:requestIntParam'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_int_param] = request_int_param if has? 'lst:requestIntParam'
          hash[:request_int_param_attributes] = request_int_param_attributes if has? 'lst:requestIntParam'

          hash
        end
      end
    end
  end
end