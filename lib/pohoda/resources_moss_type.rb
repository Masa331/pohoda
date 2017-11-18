module Pohoda
  class ResourcesMOSSType
    include BaseElement

    def ids
      text_at 'ids'
    end

    def to_h
      { ids: ids }
    end
  end
end
