module Pohoda
  module Builders
    module Stk
      class IntParametersType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :int_parameter
            data[:int_parameter].each { |i| root << Stk::IntParameterType.new('stk:intParameter', i).builder }
          end

          root
        end
      end
    end
  end
end