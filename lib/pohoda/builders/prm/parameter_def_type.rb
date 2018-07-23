module Pohoda
  module Builders
    module Prm
      class ParameterDefType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('prm:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('prm:label', data[:label], data[:label_attributes]) if data.key? :label
          root << build_element('prm:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('prm:type', data[:type], data[:type_attributes]) if data.key? :type
          root << build_element('prm:length', data[:length], data[:length_attributes]) if data.key? :length
          root << build_element('prm:definition', data[:definition], data[:definition_attributes]) if data.key? :definition
          if data.key? :list
            root << Typ::RefType.new('prm:list', data[:list]).builder
          end
          root << build_element('prm:use0', data[:use0], data[:use0_attributes]) if data.key? :use0
          root << build_element('prm:use1', data[:use1], data[:use1_attributes]) if data.key? :use1
          root << build_element('prm:use2', data[:use2], data[:use2_attributes]) if data.key? :use2
          root << build_element('prm:use3', data[:use3], data[:use3_attributes]) if data.key? :use3
          root << build_element('prm:use4', data[:use4], data[:use4_attributes]) if data.key? :use4
          root << build_element('prm:use5', data[:use5], data[:use5_attributes]) if data.key? :use5

          root
        end
      end
    end
  end
end