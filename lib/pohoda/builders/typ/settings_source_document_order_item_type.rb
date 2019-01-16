module Pohoda
  module Builders
    module Typ
      class SettingsSourceDocumentOrderItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:linkOrderItemToInvoice', data[:link_order_item_to_invoice], data[:link_order_item_to_invoice_attributes]) if data.key? :link_order_item_to_invoice

          root
        end
      end
    end
  end
end