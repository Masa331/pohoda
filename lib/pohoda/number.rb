module Pohoda
  class Number
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def ids
      text_at 'typ:ids'
    end

    def number_requested
      text_at 'typ:numberRequested'
    end

    def to_h
      { id: id,
        ids: ids,
        number_requested: number_requested }
    end
  end
end
