module Pohoda
  module Builders
    module Stk
      class IntParameterValueType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('stk:parameterValueID', data[:parameter_value_id], data[:parameter_value_id_attributes]) if data.key? :parameter_value_id
          root << build_element('stk:parameterValue', data[:parameter_value], data[:parameter_value_attributes]) if data.key? :parameter_value
          root << build_element('stk:parameterOrder', data[:parameter_order], data[:parameter_order_attributes]) if data.key? :parameter_order

          root
        end
      end
    end
  end
end