module Pohoda
  module Builders
    module Typ
      class SettingsSourceDocumentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:linkOrderToAdvanceInvoice', data[:link_order_to_advance_invoice]) if data.key? :link_order_to_advance_invoice

          root
        end
      end
    end
  end
end