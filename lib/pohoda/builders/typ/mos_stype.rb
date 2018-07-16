module Pohoda
  module Builders
    module Typ
      class MOSStype
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:ids', data[:ids], data[:ids_attributes]) if data.key? :ids

          root
        end
      end
    end
  end
end