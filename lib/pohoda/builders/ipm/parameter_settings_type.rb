module Pohoda
  module Builders
    module Ipm
      class ParameterSettingsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ipm:unit', data[:unit]) if data.key? :unit
          root << build_element('ipm:length', data[:length]) if data.key? :length
          if data.key? :parameter_list
            root << Ipm::ParameterListType.new('parameterList', data[:parameter_list]).builder
          end
          if data.key? :currency
            root << Typ::RefType.new('currency', data[:currency]).builder
          end

          root
        end
      end
    end
  end
end