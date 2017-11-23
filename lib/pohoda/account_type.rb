module Pohoda
  class AccountType
    include BaseElement

    def id
      at :'typ:id'
    end

    def ids
      at :'typ:ids'
    end

    def account_no
      at :'typ:accountNo'
    end

    def bank_code
      at :'typ:bankCode'
    end

    def to_h
      { id: id,
        ids: ids,
        account_no: account_no,
        bank_code: bank_code }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
