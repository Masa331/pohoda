module Pohoda
  class RefType
    include BaseElement

    def id
      at :'typ:id'
    end

    def ids
      at :'typ:ids'
    end

    def value_type
      at :'typ:valueType'
    end

    def to_h
      { id: id,
        ids: ids,
        value_type: value_type }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
