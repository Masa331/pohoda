module Pohoda
  class PaymentAccount
    include BaseElement

    def account_no
      t 'typ:accountNo'
    end

    def bank_code
      t 'typ:bankCode'
    end
  end
end
