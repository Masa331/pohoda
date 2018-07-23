module Pohoda
  module Builders
    module Typ
      class ResponsiblePersonType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('typ:surname', data[:surname], data[:surname_attributes]) if data.key? :surname
          root << build_element('typ:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('typ:degree', data[:degree], data[:degree_attributes]) if data.key? :degree

          root
        end
      end
    end
  end
end