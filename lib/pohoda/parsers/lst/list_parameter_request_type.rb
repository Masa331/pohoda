module Pohoda
  module Parsers
    module Lst
      class ListParameterRequestType
        include ParserCore::BaseParser

        def request_parameter
          at 'lst:requestParameter'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_parameter] = request_parameter if has? 'lst:requestParameter'

          hash
        end
      end
    end
  end
end