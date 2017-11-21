module Pohoda
  class PaymentAccount
    include BaseElement

    def account_no
      text_at 'accountNo'
    end

    def bank_code
      text_at 'bankCode'
    end

    def to_h
      { account_no: account_no,
        bank_code: bank_code }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
