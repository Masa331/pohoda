module Pohoda
  class Reference
    include BaseElement

    def id
      t 'typ:id'
    end

    def ids
      t 'typ:ids'
    end

    def value_type
      t 'typ:valueType'
    end
  end
end
