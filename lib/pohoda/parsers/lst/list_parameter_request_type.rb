module Pohoda
  module Parsers
    module Lst
      class ListParameterRequestType
        include ParserCore::BaseParser

        def request_parameter
          at 'lst:requestParameter'
        end

        def request_parameter_attributes
          attributes_at 'lst:requestParameter'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_parameter] = request_parameter if has? 'lst:requestParameter'
          hash[:request_parameter_attributes] = request_parameter_attributes if has? 'lst:requestParameter'

          hash
        end
      end
    end
  end
end