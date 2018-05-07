module Pohoda
  module Parsers
    module Typ
      class LinkElemetType
        include ParserCore::BaseParser

        def source_agenda
          at 'typ:sourceAgenda'
        end

        def source_document
          submodel_at(Typ::SourceDocumentType, 'typ:sourceDocument')
        end

        def settings_source_document
          submodel_at(Typ::SettingsSourceDocumentType, 'typ:settingsSourceDocument')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:source_agenda] = source_agenda if has? 'typ:sourceAgenda'
          hash[:source_document] = source_document.to_h_with_attrs if has? 'typ:sourceDocument'
          hash[:settings_source_document] = settings_source_document.to_h_with_attrs if has? 'typ:settingsSourceDocument'

          hash
        end
      end
    end
  end
end