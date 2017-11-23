module Pohoda
  class MOSSType
    include BaseElement

    def ids
      at :'typ:ids'
    end

    def to_h
      { ids: ids }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
