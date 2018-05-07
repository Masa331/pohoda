module Pohoda
  module Builders
    module Stk
      class IntParameterValueType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('stk:parameterValueID', data[:parameter_value_id]) if data.key? :parameter_value_id
          root << build_element('stk:parameterValue', data[:parameter_value]) if data.key? :parameter_value
          root << build_element('stk:parameterOrder', data[:parameter_order]) if data.key? :parameter_order

          root
        end
      end
    end
  end
end