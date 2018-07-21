module Pohoda
  module Builders
    module Typ
      class ParametersType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :parameter
            data[:parameter].each { |i| root << Typ::ParameterDocType.new('typ:parameter', i).builder }
          end

          root
        end
      end
    end
  end
end