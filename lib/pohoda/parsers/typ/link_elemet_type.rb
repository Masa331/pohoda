module Pohoda
  module Parsers
    module Typ
      class LinkElemetType
        include ParserCore::BaseParser

        def source_agenda
          at 'typ:sourceAgenda'
        end

        def source_agenda_attributes
          attributes_at 'typ:sourceAgenda'
        end

        def source_document
          submodel_at(Typ::SourceDocumentType, 'typ:sourceDocument')
        end

        def settings_source_document
          submodel_at(Typ::SettingsSourceDocumentType, 'typ:settingsSourceDocument')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:source_agenda] = source_agenda if has? 'typ:sourceAgenda'
          hash[:source_agenda_attributes] = source_agenda_attributes if has? 'typ:sourceAgenda'
          hash[:source_document] = source_document.to_h if has? 'typ:sourceDocument'
          hash[:settings_source_document] = settings_source_document.to_h if has? 'typ:settingsSourceDocument'

          hash
        end
      end
    end
  end
end