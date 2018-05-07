module Pohoda
  module Builders
    module Inv
      class InvoiceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :links
            root << Typ::LinksType.new('links', data[:links]).builder
          end
          if data.key? :cancel_document
            root << Typ::CancelDocumentType.new('cancelDocument', data[:cancel_document]).builder
          end
          if data.key? :invoice_header
            root << Inv::InvoiceHeaderType.new('invoiceHeader', data[:invoice_header]).builder
          end
          if data.key? :invoice_detail
            root << Inv::InvoiceDetailType.new('invoiceDetail', data[:invoice_detail]).builder
          end
          if data.key? :invoice_summary
            root << Inv::InvoiceSummaryType.new('invoiceSummary', data[:invoice_summary]).builder
          end
          if data.key? :eet
            root << Typ::EETType.new('EET', data[:eet]).builder
          end
          if data.key? :print
            root << Prn::AgendaPrintType.new('print', data[:print]).builder
          end

          root
        end
      end
    end
  end
end