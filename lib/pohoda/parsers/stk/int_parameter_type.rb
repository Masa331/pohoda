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

        def int_parameter_id_attributes
          attributes_at 'stk:intParameterID'
        end

        def int_parameter_name
          at 'stk:intParameterName'
        end

        def int_parameter_name_attributes
          attributes_at 'stk:intParameterName'
        end

        def int_parameter_order
          at 'stk:intParameterOrder'
        end

        def int_parameter_order_attributes
          attributes_at 'stk:intParameterOrder'
        end

        def int_parameter_type
          at 'stk:intParameterType'
        end

        def int_parameter_type_attributes
          attributes_at 'stk:intParameterType'
        end

        def int_parameter_values
          array_of_at(Stk::IntParameterValueType, ['stk:intParameterValues', 'stk:intParameterValue'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type.to_h if has? 'stk:actionType'
          hash[:int_parameter_id] = int_parameter_id if has? 'stk:intParameterID'
          hash[:int_parameter_id_attributes] = int_parameter_id_attributes if has? 'stk:intParameterID'
          hash[:int_parameter_name] = int_parameter_name if has? 'stk:intParameterName'
          hash[:int_parameter_name_attributes] = int_parameter_name_attributes if has? 'stk:intParameterName'
          hash[:int_parameter_order] = int_parameter_order if has? 'stk:intParameterOrder'
          hash[:int_parameter_order_attributes] = int_parameter_order_attributes if has? 'stk:intParameterOrder'
          hash[:int_parameter_type] = int_parameter_type if has? 'stk:intParameterType'
          hash[:int_parameter_type_attributes] = int_parameter_type_attributes if has? 'stk:intParameterType'
          hash[:int_parameter_values] = int_parameter_values.map(&:to_h) if has? 'stk:intParameterValues'

          hash
        end
      end
    end
  end
end