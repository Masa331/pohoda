module Pohoda
  class LinkElemetType
    include BaseElement

    def source_agenda
      t 'typ:sourceAgenda'
    end

    def source_document
      SourceDocumentType.new(e 'typ:sourceDocument')
    end

    def to_h
      { source_agenda: source_agenda,
        source_document: source_document.to_h }
    end
  end
end
