module Pohoda
  class AccountType
    include BaseElement

    def id
      text_at 'id'
    end

    def ids
      text_at 'ids'
    end

    def account_no
      text_at 'accountNo'
    end

    def bank_code
      text_at 'bankCode'
    end

    def to_h
      { id: id,
        ids: ids,
        account_no: account_no,
        bank_code: bank_code }
    end
  end
end
