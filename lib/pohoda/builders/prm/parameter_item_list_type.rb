module Pohoda
  module Builders
    module Prm
      class ParameterItemListType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :parameter_def
            data[:parameter_def].each { |i| root << Prm::ParameterDefType.new('prm:parameterDef', i).builder }
          end

          root
        end
      end
    end
  end
end