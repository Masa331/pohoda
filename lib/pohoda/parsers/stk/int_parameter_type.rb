module Pohoda
  module Parsers
    module Stk
      class IntParameterType
        include ParserCore::BaseParser

        def action_type
          submodel_at(Typ::ActionTypeItem, 'stk:actionType')
        end

        def int_parameter_id
          at 'stk:intParameterID'
        end

        def int_parameter_name
          at 'stk:intParameterName'
        end

        def int_parameter_order
          at 'stk:intParameterOrder'
        end

        def int_parameter_type
          at 'stk:intParameterType'
        end

        def int_parameter_values
          submodel_at(Stk::IntParameterValuesType, 'stk:intParameterValues')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type.to_h_with_attrs if has? 'stk:actionType'
          hash[:int_parameter_id] = int_parameter_id if has? 'stk:intParameterID'
          hash[:int_parameter_name] = int_parameter_name if has? 'stk:intParameterName'
          hash[:int_parameter_order] = int_parameter_order if has? 'stk:intParameterOrder'
          hash[:int_parameter_type] = int_parameter_type if has? 'stk:intParameterType'
          hash[:int_parameter_values] = int_parameter_values.to_h_with_attrs if has? 'stk:intParameterValues'

          hash
        end
      end
    end
  end
end