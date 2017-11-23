module Pohoda
  class Number
    include BaseElement

    def id
      at :'typ:id'
    end

    def ids
      at :'typ:ids'
    end

    def number_requested
      at :'typ:numberRequested'
    end

    def to_h
      { id: id,
        ids: ids,
        number_requested: number_requested }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
