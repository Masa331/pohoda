module Pohoda
  class RefTypeRegVatInEU
    include BaseElement

    def id
      text_at 'id'
    end

    def ids
      text_at 'ids'
    end

    def to_h
      { id: id,
        ids: ids }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
