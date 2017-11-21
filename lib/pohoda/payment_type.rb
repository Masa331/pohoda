module Pohoda
  class PaymentType
    include BaseElement

    def id
      text_at 'id'
    end

    def ids
      text_at 'ids'
    end

    def payment_type
      text_at 'paymentType'
    end

    def to_h
      { id: id,
        ids: ids,
        payment_type: payment_type }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
