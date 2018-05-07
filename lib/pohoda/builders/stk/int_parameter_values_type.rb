module Pohoda
  module Builders
    module Stk
      class IntParameterValuesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :int_parameter_value
            data[:int_parameter_value].each { |i| root << Stk::IntParameterValueType.new('stk:intParameterValue', i).builder }
          end

          root
        end
      end
    end
  end
end