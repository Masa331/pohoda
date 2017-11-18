module Pohoda
  class Accounting
    include BaseElement

    def id
      text_at 'id'
    end

    def ids
      text_at 'ids'
    end

    def accounting_type
      text_at 'accountingType'
    end

    def to_h
      { id: id,
        ids: ids,
        accounting_type: accounting_type }
    end
  end
end
