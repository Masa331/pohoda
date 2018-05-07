module Pohoda
  module Builders
    module Stk
      class IntParameterType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :action_type
            root << Typ::ActionTypeItem.new('actionType', data[:action_type]).builder
          end
          root << build_element('stk:intParameterID', data[:int_parameter_id]) if data.key? :int_parameter_id
          root << build_element('stk:intParameterName', data[:int_parameter_name]) if data.key? :int_parameter_name
          root << build_element('stk:intParameterOrder', data[:int_parameter_order]) if data.key? :int_parameter_order
          root << build_element('stk:intParameterType', data[:int_parameter_type]) if data.key? :int_parameter_type
          if data.key? :int_parameter_values
            root << Stk::IntParameterValuesType.new('intParameterValues', data[:int_parameter_values]).builder
          end

          root
        end
      end
    end
  end
end