module Pohoda
  class PaymentType
    include BaseElement

    def id
      at :'typ:id'
    end

    def ids
      at :'typ:ids'
    end

    def payment_type
      at :'typ:paymentType'
    end

    def to_h
      { id: id,
        ids: ids,
        payment_type: payment_type }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
