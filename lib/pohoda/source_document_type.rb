module Pohoda
  class SourceDocumentType
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def number
      text_at 'typ:number'
    end

    def to_h
      { id: id,
        number: number }
    end
  end
end
