module Pohoda
  module Parsers
    module Stk
      class IntParametersType
        include ParserCore::BaseParser

        def int_parameter
          array_of_at(Stk::IntParameterType, ['stk:intParameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:int_parameter] = int_parameter.map(&:to_h_with_attrs) if has? 'stk:intParameter'

          hash
        end
      end
    end
  end
end