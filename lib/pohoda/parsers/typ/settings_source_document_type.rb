module Pohoda
  module Parsers
    module Typ
      class SettingsSourceDocumentType
        include ParserCore::BaseParser

        def link_order_to_advance_invoice
          at 'typ:linkOrderToAdvanceInvoice'
        end

        def link_order_to_advance_invoice_attributes
          attributes_at 'typ:linkOrderToAdvanceInvoice'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:link_order_to_advance_invoice] = link_order_to_advance_invoice if has? 'typ:linkOrderToAdvanceInvoice'
          hash[:link_order_to_advance_invoice_attributes] = link_order_to_advance_invoice_attributes if has? 'typ:linkOrderToAdvanceInvoice'

          hash
        end
      end
    end
  end
end