module Pohoda
  class Accounting
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def ids
      text_at 'typ:ids'
    end

    def accounting_type
      text_at 'typ:accountingType'
    end

    def to_h
      { id: id,
        ids: ids,
        accounting_type: accounting_type }
    end
  end
end
