module Pohoda
  class SourceDocumentType
    include BaseElement

    def id
      at :'typ:id'
    end

    def number
      at :'typ:number'
    end

    def to_h
      { id: id,
        number: number }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
