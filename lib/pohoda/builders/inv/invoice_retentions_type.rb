module Pohoda
  module Builders
    module Inv
      class InvoiceRetentionsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :invoice_retention
            data[:invoice_retention].each { |i| root << Inv::InvoiceRetentionType.new('inv:invoiceRetention', i).builder }
          end

          root
        end
      end
    end
  end
end