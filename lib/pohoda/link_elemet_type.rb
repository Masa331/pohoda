module Pohoda
  class LinkElemetType
    include BaseElement

    def source_agenda
      text_at 'typ:sourceAgenda'
    end

    def source_document
      element_xml = at_xpath 'typ:sourceDocument'

      SourceDocumentType.new(element_xml) if element_xml
    end

    def to_h
      { source_agenda: source_agenda,
        source_document: source_document.to_h }
    end
  end
end
