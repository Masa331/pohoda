module Pohoda
  module Parsers
    module Stk
      class IntParameterValueType
        include ParserCore::BaseParser

        def parameter_value_id
          at 'stk:parameterValueID'
        end

        def parameter_value_id_attributes
          attributes_at 'stk:parameterValueID'
        end

        def parameter_value
          at 'stk:parameterValue'
        end

        def parameter_value_attributes
          attributes_at 'stk:parameterValue'
        end

        def parameter_order
          at 'stk:parameterOrder'
        end

        def parameter_order_attributes
          attributes_at 'stk:parameterOrder'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:parameter_value_id] = parameter_value_id if has? 'stk:parameterValueID'
          hash[:parameter_value_id_attributes] = parameter_value_id_attributes if has? 'stk:parameterValueID'
          hash[:parameter_value] = parameter_value if has? 'stk:parameterValue'
          hash[:parameter_value_attributes] = parameter_value_attributes if has? 'stk:parameterValue'
          hash[:parameter_order] = parameter_order if has? 'stk:parameterOrder'
          hash[:parameter_order_attributes] = parameter_order_attributes if has? 'stk:parameterOrder'

          hash
        end
      end
    end
  end
end