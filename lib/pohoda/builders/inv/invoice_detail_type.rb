module Pohoda
  module Builders
    module Inv
      class InvoiceDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :invoice_item
            data[:invoice_item].each { |i| root << Inv::InvoiceItemType.new('inv:invoiceItem', i).builder }
          end
          if data.key? :invoice_advance_payment_item
            data[:invoice_advance_payment_item].each { |i| root << Inv::InvoiceAdvancePaymentItemType.new('inv:invoiceAdvancePaymentItem', i).builder }
          end

          root
        end
      end
    end
  end
end