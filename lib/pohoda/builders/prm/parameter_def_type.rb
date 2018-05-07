module Pohoda
  module Builders
    module Prm
      class ParameterDefType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('prm:id', data[:id]) if data.key? :id
          root << build_element('prm:label', data[:label]) if data.key? :label
          root << build_element('prm:name', data[:name]) if data.key? :name
          root << build_element('prm:type', data[:type]) if data.key? :type
          root << build_element('prm:length', data[:length]) if data.key? :length
          root << build_element('prm:definition', data[:definition]) if data.key? :definition
          if data.key? :list
            root << Typ::RefType.new('list', data[:list]).builder
          end
          root << build_element('prm:use0', data[:use0]) if data.key? :use0
          root << build_element('prm:use1', data[:use1]) if data.key? :use1
          root << build_element('prm:use2', data[:use2]) if data.key? :use2
          root << build_element('prm:use3', data[:use3]) if data.key? :use3
          root << build_element('prm:use4', data[:use4]) if data.key? :use4
          root << build_element('prm:use5', data[:use5]) if data.key? :use5

          root
        end
      end
    end
  end
end