module Pohoda
  class RefType
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def ids
      text_at 'typ:ids'
    end

    def value_type
      text_at 'typ:valueType'
    end

    def to_h
      { id: id,
        ids: ids,
        value_type: value_type }
    end
  end
end
