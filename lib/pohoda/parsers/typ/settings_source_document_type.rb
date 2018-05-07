module Pohoda
  module Parsers
    module Typ
      class SettingsSourceDocumentType
        include ParserCore::BaseParser

        def link_order_to_advance_invoice
          at 'typ:linkOrderToAdvanceInvoice'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:link_order_to_advance_invoice] = link_order_to_advance_invoice if has? 'typ:linkOrderToAdvanceInvoice'

          hash
        end
      end
    end
  end
end