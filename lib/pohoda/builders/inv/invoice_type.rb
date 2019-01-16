module Pohoda
  module Builders
    module Inv
      class InvoiceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :links
            element = Ox::Element.new('inv:links')
            data[:links].each { |i| element << Typ::LinkElemetType.new('typ:link', i).builder }
            root << element
          end
          if data.key? :cancel_document
            root << Typ::CancelDocumentType.new('inv:cancelDocument', data[:cancel_document]).builder
          end
          if data.key? :invoice_header
            root << Inv::InvoiceHeaderType.new('inv:invoiceHeader', data[:invoice_header]).builder
          end
          if data.key? :invoice_retentions
            element = Ox::Element.new('inv:invoiceRetentions')
            data[:invoice_retentions].each { |i| element << Inv::InvoiceRetentionType.new('inv:invoiceRetention', i).builder }
            root << element
          end
          if data.key? :invoice_detail
            root << Inv::InvoiceDetailType.new('inv:invoiceDetail', data[:invoice_detail]).builder
          end
          if data.key? :invoice_summary
            root << Inv::InvoiceSummaryType.new('inv:invoiceSummary', data[:invoice_summary]).builder
          end
          if data.key? :eet
            root << Typ::EETType.new('inv:EET', data[:eet]).builder
          end
          if data.key? :print
            element = Ox::Element.new('inv:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end