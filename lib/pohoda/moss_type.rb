module Pohoda
  class MOSSType
    include BaseElement

    def ids
      text_at 'ids'
    end

    def to_h
      { ids: ids }
    end
  end
end
