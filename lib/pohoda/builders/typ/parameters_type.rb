module Pohoda
  module Builders
    module Typ
      class ParametersType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :parameter
            data[:parameter].each { |i| root << Typ::ParameterDocType.new('typ:parameter', i).builder }
          end

          root
        end
      end
    end
  end
end