module Pohoda
  module Parsers
    module Typ
      class LinkItemType
        include ParserCore::BaseParser

        def source_agenda
          at 'typ:sourceAgenda'
        end

        def source_agenda_attributes
          attributes_at 'typ:sourceAgenda'
        end

        def source_item_id
          at 'typ:sourceItemId'
        end

        def source_item_id_attributes
          attributes_at 'typ:sourceItemId'
        end

        def source_item_ext_id
          submodel_at(Typ::ExtIdType, 'typ:sourceItemExtId')
        end

        def settings_source_document_order_item
          submodel_at(Typ::SettingsSourceDocumentOrderItemType, 'typ:settingsSourceDocumentOrderItem')
        end

        def settings_source_document_item
          submodel_at(Typ::SettingsSourceDocumentItemType, 'typ:settingsSourceDocumentItem')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:source_agenda] = source_agenda if has? 'typ:sourceAgenda'
          hash[:source_agenda_attributes] = source_agenda_attributes if has? 'typ:sourceAgenda'
          hash[:source_item_id] = source_item_id if has? 'typ:sourceItemId'
          hash[:source_item_id_attributes] = source_item_id_attributes if has? 'typ:sourceItemId'
          hash[:source_item_ext_id] = source_item_ext_id.to_h if has? 'typ:sourceItemExtId'
          hash[:settings_source_document_order_item] = settings_source_document_order_item.to_h if has? 'typ:settingsSourceDocumentOrderItem'
          hash[:settings_source_document_item] = settings_source_document_item.to_h if has? 'typ:settingsSourceDocumentItem'

          hash
        end
      end
    end
  end
end