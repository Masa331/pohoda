module Pohoda
  module Builders
    module Prm
      class ParameterItemListType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :parameter_def
            data[:parameter_def].each { |i| root << Prm::ParameterDefType.new('prm:parameterDef', i).builder }
          end

          root
        end
      end
    end
  end
end