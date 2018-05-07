module Pohoda
  module Parsers
    module Inv
      class InvoiceDetailType
        include ParserCore::BaseParser

        def invoice_item
          array_of_at(Inv::InvoiceItemType, ['inv:invoiceItem'])
        end

        def invoice_advance_payment_item
          array_of_at(Inv::InvoiceAdvancePaymentItemType, ['inv:invoiceAdvancePaymentItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:invoice_item] = invoice_item.map(&:to_h_with_attrs) if has? 'inv:invoiceItem'
          hash[:invoice_advance_payment_item] = invoice_advance_payment_item.map(&:to_h_with_attrs) if has? 'inv:invoiceAdvancePaymentItem'

          hash
        end
      end
    end
  end
end