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
          if data.key? :source_item_ext_id
            root << Typ::ExtIdType.new('typ:sourceItemExtId', data[:source_item_ext_id]).builder
          end
          if data.key? :settings_source_document_order_item
            root << Typ::SettingsSourceDocumentOrderItemType.new('typ:settingsSourceDocumentOrderItem', data[:settings_source_document_order_item]).builder
          end
          if data.key? :settings_source_document_item
            root << Typ::SettingsSourceDocumentItemType.new('typ:settingsSourceDocumentItem', data[:settings_source_document_item]).builder
          end

          root
        end
      end
    end
  end
end