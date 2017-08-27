module Pohoda
  class Number
    include BaseElement

    def id
      t 'typ:id'
    end

    def ids
      t 'typ:ids'
    end

    def number_requested
      t 'typ:numberRequested'
    end

    def to_h
      { id: id,
        ids: ids,
        number_requested: number_requested }
    end
  end
end
