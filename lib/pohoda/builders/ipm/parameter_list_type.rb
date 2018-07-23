module Pohoda
  module Builders
    module Ipm
      class ParameterListType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :parameter_list_item
            data[:parameter_list_item].each { |i| root << Ipm::ParameterListItemType.new('ipm:parameterListItem', i).builder }
          end

          root
        end
      end
    end
  end
end