module Pohoda
  module Builders
    module Ipm
      class ParameterListItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('ipm:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('ipm:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('ipm:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('ipm:sequence', data[:sequence], data[:sequence_attributes]) if data.key? :sequence

          root
        end
      end
    end
  end
end