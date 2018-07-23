module Pohoda
  module Builders
    module Ftr
      class FilterIDType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ftr:id', data[:id], data[:id_attributes]) if data.key? :id

          root
        end
      end
    end
  end
end