module Pohoda
  module Parsers
    module Typ
      class CancelDocumentType
        include ParserCore::BaseParser

        def source_document
          submodel_at(Typ::SourceDocumentType, 'typ:sourceDocument')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:source_document] = source_document.to_h if has? 'typ:sourceDocument'

          hash
        end
      end
    end
  end
end