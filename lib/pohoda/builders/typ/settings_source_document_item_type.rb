module Pohoda
  module Builders
    module Typ
      class SettingsSourceDocumentItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:linkIssueSlipItemToInvoice', data[:link_issue_slip_item_to_invoice], data[:link_issue_slip_item_to_invoice_attributes]) if data.key? :link_issue_slip_item_to_invoice

          root
        end
      end
    end
  end
end