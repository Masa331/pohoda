module Pohoda
  module Builders
    module Prm
      class UserCodePartType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('prm:part0', data[:part0], data[:part0_attributes]) if data.key? :part0
          root << build_element('prm:part1', data[:part1], data[:part1_attributes]) if data.key? :part1
          root << build_element('prm:part2', data[:part2], data[:part2_attributes]) if data.key? :part2
          root << build_element('prm:part3', data[:part3], data[:part3_attributes]) if data.key? :part3
          root << build_element('prm:part4', data[:part4], data[:part4_attributes]) if data.key? :part4

          root
        end
      end
    end
  end
end