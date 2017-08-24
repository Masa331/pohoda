module Pohoda
  class Account
    include BaseElement

    def id
      t 'typ:id'
    end

    def ids
      t 'typ:ids'
    end

    def account_no
      t 'typ:accountNo'
    end

    def bank_code
      t 'typ:bankCode'
    end
  end
end
