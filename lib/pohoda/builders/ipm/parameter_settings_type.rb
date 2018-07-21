module Pohoda
  module Builders
    module Ipm
      class ParameterSettingsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('ipm:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('ipm:length', data[:length], data[:length_attributes]) if data.key? :length
          if data.key? :parameter_list
            element = Ox::Element.new('ipm:parameterList')
            data[:parameter_list].each { |i| element << Ipm::ParameterListItemType.new('ipm:parameterListItem', i).builder }
            root << element
          end
          if data.key? :currency
            root << Typ::RefType.new('ipm:currency', data[:currency]).builder
          end

          root
        end
      end
    end
  end
end