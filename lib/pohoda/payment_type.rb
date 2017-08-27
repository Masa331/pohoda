module Pohoda
  class PaymentType
    include BaseElement

    def id
      t 'typ:id'
    end

    def ids
      t 'typ:ids'
    end

    def payment_type
      t 'typ:paymentType'
    end

    def to_h
      { id: id,
        ids: ids,
        payment_type: payment_type }
    end
  end
end
