module Pohoda
  class InvoiceDetail
    include BaseElement

    def items
      raw_items = xml.xpath('inv:invoiceItem')

      if raw_items.empty?
        []
      else
        raw_items.map { |i| InvoiceItemType.new(i) }
      end
    end

    def advance_payments
      raw_items = xml.xpath('inv:invoiceAdvancePaymentItem')

      if raw_items.empty?
        []
      else
        raw_items.map { |i| InvoiceAdvancePaymentItemType.new(i) }
      end
    end

    def to_h
      { items: items.map(&:to_h),
        advance_payments: advance_payments.map(&:to_h) }
    end
  end
end
