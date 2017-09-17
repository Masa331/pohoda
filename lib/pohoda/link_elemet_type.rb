module Pohoda
  class LinkElemetType
    include BaseElement

    def source_agenda
      t 'typ:sourceAgenda'
    end

    def source_document
      SourceDocumentType.new(e 'typ:sourceDocument')
    end

    def settings_source_document
      t 'typ:accountingType'
    end

    def to_h
      { source_agenda: source_agenda,
        source_document: source_document.to_h,
        ids: settings_source_document }
    end
  end
end
