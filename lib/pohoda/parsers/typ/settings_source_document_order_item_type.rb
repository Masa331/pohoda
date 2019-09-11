module Pohoda
  module Parsers
    module Typ
      class SettingsSourceDocumentOrderItemType
        include ParserCore::BaseParser

        def link_order_item_to_invoice
          at 'typ:linkOrderItemToInvoice'
        end

        def link_order_item_to_invoice_attributes
          attributes_at 'typ:linkOrderItemToInvoice'
        end

        def link_order_item_to_issue_slip
          at 'typ:linkOrderItemToIssueSlip'
        end

        def link_order_item_to_issue_slip_attributes
          attributes_at 'typ:linkOrderItemToIssueSlip'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:link_order_item_to_invoice] = link_order_item_to_invoice if has? 'typ:linkOrderItemToInvoice'
          hash[:link_order_item_to_invoice_attributes] = link_order_item_to_invoice_attributes if has? 'typ:linkOrderItemToInvoice'
          hash[:link_order_item_to_issue_slip] = link_order_item_to_issue_slip if has? 'typ:linkOrderItemToIssueSlip'
          hash[:link_order_item_to_issue_slip_attributes] = link_order_item_to_issue_slip_attributes if has? 'typ:linkOrderItemToIssueSlip'

          hash
        end
      end
    end
  end
end