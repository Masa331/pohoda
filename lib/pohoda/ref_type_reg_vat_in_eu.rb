module Pohoda
  class RefTypeRegVatInEU
    include BaseElement

    def id
      at :'typ:id'
    end

    def ids
      at :'typ:ids'
    end

    def to_h
      { id: id,
        ids: ids }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
