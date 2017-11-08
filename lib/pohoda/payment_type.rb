module Pohoda
  class PaymentType
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def ids
      text_at 'typ:ids'
    end

    def payment_type
      text_at 'typ:paymentType'
    end

    def to_h
      { id: id,
        ids: ids,
        payment_type: payment_type }
    end
  end
end
