module Pohoda
  module Parsers
    module Inv
      class InvoiceType
        include ParserCore::BaseParser

        def links
          array_of_at(Typ::LinkElemetType, ['inv:links', 'typ:link'])
        end

        def cancel_document
          submodel_at(Typ::CancelDocumentType, 'inv:cancelDocument')
        end

        def invoice_header
          submodel_at(Inv::InvoiceHeaderType, 'inv:invoiceHeader')
        end

        def invoice_retentions
          array_of_at(Inv::InvoiceRetentionType, ['inv:invoiceRetentions', 'inv:invoiceRetention'])
        end

        def invoice_detail
          submodel_at(Inv::InvoiceDetailType, 'inv:invoiceDetail')
        end

        def invoice_summary
          submodel_at(Inv::InvoiceSummaryType, 'inv:invoiceSummary')
        end

        def eet
          submodel_at(Typ::EETType, 'inv:EET')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['inv:print', 'prn:printerSettings'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:links] = links.map(&:to_h) if has? 'inv:links'
          hash[:cancel_document] = cancel_document.to_h if has? 'inv:cancelDocument'
          hash[:invoice_header] = invoice_header.to_h if has? 'inv:invoiceHeader'
          hash[:invoice_retentions] = invoice_retentions.map(&:to_h) if has? 'inv:invoiceRetentions'
          hash[:invoice_detail] = invoice_detail.to_h if has? 'inv:invoiceDetail'
          hash[:invoice_summary] = invoice_summary.to_h if has? 'inv:invoiceSummary'
          hash[:eet] = eet.to_h if has? 'inv:EET'
          hash[:print] = print.map(&:to_h) if has? 'inv:print'

          hash
        end
      end
    end
  end
end