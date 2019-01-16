module Pohoda
  module Builders
    module Typ
      class SourceDocumentItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:sourceItemId', data[:source_item_id], data[:source_item_id_attributes]) if data.key? :source_item_id
          if data.key? :source_item_ext_id
            root << Typ::ExtIdType.new('typ:sourceItemExtId', data[:source_item_ext_id]).builder
          end

          root
        end
      end
    end
  end
end