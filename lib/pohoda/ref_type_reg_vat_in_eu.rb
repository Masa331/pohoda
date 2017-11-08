module Pohoda
  class RefTypeRegVatInEU
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def ids
      text_at 'typ:ids'
    end

    def to_h
      { id: id,
        ids: ids }
    end
  end
end
