module Pohoda
  module Parsers
    module Stk
      class IntParameterValuesType
        include ParserCore::BaseParser

        def int_parameter_value
          array_of_at(Stk::IntParameterValueType, ['stk:intParameterValue'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:int_parameter_value] = int_parameter_value.map(&:to_h_with_attrs) if has? 'stk:intParameterValue'

          hash
        end
      end
    end
  end
end