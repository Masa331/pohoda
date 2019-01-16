module Pohoda
  module Parsers
    module Typ
      class LinkedDocumentType
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

        def source_document_item
          submodel_at(Typ::SourceDocumentItemType, 'typ:sourceDocumentItem')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:source_agenda] = source_agenda if has? 'typ:sourceAgenda'
          hash[:source_agenda_attributes] = source_agenda_attributes if has? 'typ:sourceAgenda'
          hash[:source_document] = source_document.to_h if has? 'typ:sourceDocument'
          hash[:source_document_item] = source_document_item.to_h if has? 'typ:sourceDocumentItem'

          hash
        end
      end
    end
  end
end