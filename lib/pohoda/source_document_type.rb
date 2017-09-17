module Pohoda
  class SourceDocumentType
    include BaseElement

    def id
      t 'typ:id'
    end

    def number
      t 'typ:number'
    end

    def to_h
      { id: id,
        number: number }
    end
  end
end
