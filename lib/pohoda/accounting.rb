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
  end
end
