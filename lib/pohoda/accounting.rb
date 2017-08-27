module Pohoda
  class Accounting
    include BaseElement

    def id
      t 'typ:id'
    end

    def ids
      t 'typ:ids'
    end

    def accounting_type
      t 'typ:accountingType'
    end

    def to_h
      { id: id,
        ids: ids,
        accounting_type: accounting_type }
    end
  end
end
