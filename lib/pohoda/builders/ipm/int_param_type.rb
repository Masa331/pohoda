module Pohoda
  module Builders
    module Ipm
      class IntParamType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ipm:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ipm:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('ipm:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('ipm:parameterType', data[:parameter_type], data[:parameter_type_attributes]) if data.key? :parameter_type
          if data.key? :parameter_settings
            root << Ipm::ParameterSettingsType.new('ipm:parameterSettings', data[:parameter_settings]).builder
          end
          root << build_element('ipm:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          root << build_element('ipm:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end