module Pohoda
  module Builders
    module Ipm
      class ParameterListItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ipm:id', data[:id]) if data.key? :id
          root << build_element('ipm:name', data[:name]) if data.key? :name
          root << build_element('ipm:description', data[:description]) if data.key? :description
          root << build_element('ipm:sequence', data[:sequence]) if data.key? :sequence

          root
        end
      end
    end
  end
end