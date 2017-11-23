module Pohoda
  class Accounting
    include BaseElement

    def id
      at :'typ:id'
    end

    def ids
      at :'typ:ids'
    end

    def accounting_type
      at :'typ:accountingType'
    end

    def to_h
      { id: id,
        ids: ids,
        accounting_type: accounting_type }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
