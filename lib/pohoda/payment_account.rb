module Pohoda
  class PaymentAccount
    include BaseElement

    def account_no
      at :'typ:accountNo'
    end

    def bank_code
      at :'typ:bankCode'
    end

    def to_h
      { account_no: account_no,
        bank_code: bank_code }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
