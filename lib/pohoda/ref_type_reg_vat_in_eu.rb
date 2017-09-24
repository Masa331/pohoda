module Pohoda
  class RefTypeRegVatInEU
    include BaseElement

    def id
      t 'typ:id'
    end

    def ids
      t 'typ:ids'
    end

    def to_h
      { id: id,
        ids: ids }
    end
  end
end
