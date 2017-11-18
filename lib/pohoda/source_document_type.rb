module Pohoda
  class SourceDocumentType
    include BaseElement

    def id
      text_at 'id'
    end

    def number
      text_at 'number'
    end

    def to_h
      { id: id,
        number: number }
    end
  end
end
