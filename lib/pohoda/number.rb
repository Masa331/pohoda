module Pohoda
  class Number
    include BaseElement

    def id
      text_at 'id'
    end

    def ids
      text_at 'ids'
    end

    def number_requested
      text_at 'numberRequested'
    end

    def to_h
      { id: id,
        ids: ids,
        number_requested: number_requested }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
