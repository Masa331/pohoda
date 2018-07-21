module Pohoda
  module Builders
    module Ipm
      class ParameterListType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :parameter_list_item
            data[:parameter_list_item].each { |i| root << Ipm::ParameterListItemType.new('ipm:parameterListItem', i).builder }
          end

          root
        end
      end
    end
  end
end