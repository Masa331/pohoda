module Pohoda
  class PaymentAccount
    include BaseElement

    def account_no
      t 'typ:accountNo'
    end

    def bank_code
      t 'typ:bankCode'
    end

    def to_h
      { account_no: account_no,
        bank_code: bank_code }
    end
  end
end
