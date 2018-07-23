module Pohoda
  module Builders
    module Typ
      class LinkItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:sourceAgenda', data[:source_agenda], data[:source_agenda_attributes]) if data.key? :source_agenda
          root << build_element('typ:sourceItemId', data[:source_item_id], data[:source_item_id_attributes]) if data.key? :source_item_id

          root
        end
      end
    end
  end
end