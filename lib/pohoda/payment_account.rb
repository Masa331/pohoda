module Pohoda
  class PaymentAccount
    include BaseElement

    def account_no
      text_at 'typ:accountNo'
    end

    def bank_code
      text_at 'typ:bankCode'
    end

    def to_h
      { account_no: account_no,
        bank_code: bank_code }
    end
  end
end
