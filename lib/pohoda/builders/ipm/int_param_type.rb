module Pohoda
  module Builders
    module Ipm
      class IntParamType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ipm:id', data[:id]) if data.key? :id
          root << build_element('ipm:name', data[:name]) if data.key? :name
          root << build_element('ipm:description', data[:description]) if data.key? :description
          root << build_element('ipm:parameterType', data[:parameter_type]) if data.key? :parameter_type
          if data.key? :parameter_settings
            root << Ipm::ParameterSettingsType.new('parameterSettings', data[:parameter_settings]).builder
          end
          root << build_element('ipm:markRecord', data[:mark_record]) if data.key? :mark_record
          root << build_element('ipm:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end