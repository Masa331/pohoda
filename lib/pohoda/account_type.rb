module Pohoda
  class AccountType
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def ids
      text_at 'typ:ids'
    end

    def account_no
      text_at 'typ:accountNo'
    end

    def bank_code
      text_at 'typ:bankCode'
    end

    def to_h
      { id: id,
        ids: ids,
        account_no: account_no,
        bank_code: bank_code }
    end
  end
end
