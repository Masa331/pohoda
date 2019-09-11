module Pohoda
  module Parsers
    module Typ
      class SettingsSourceDocumentItemType
        include ParserCore::BaseParser

        def link_issue_slip_item_to_invoice
          at 'typ:linkIssueSlipItemToInvoice'
        end

        def link_issue_slip_item_to_invoice_attributes
          attributes_at 'typ:linkIssueSlipItemToInvoice'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:link_issue_slip_item_to_invoice] = link_issue_slip_item_to_invoice if has? 'typ:linkIssueSlipItemToInvoice'
          hash[:link_issue_slip_item_to_invoice_attributes] = link_issue_slip_item_to_invoice_attributes if has? 'typ:linkIssueSlipItemToInvoice'

          hash
        end
      end
    end
  end
end