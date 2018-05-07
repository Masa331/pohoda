module Pohoda
  module Parsers
    module Inv
      class InvoiceType
        include ParserCore::BaseParser

        def links
          submodel_at(Typ::LinksType, 'inv:links')
        end

        def cancel_document
          submodel_at(Typ::CancelDocumentType, 'inv:cancelDocument')
        end

        def invoice_header
          submodel_at(Inv::InvoiceHeaderType, 'inv:invoiceHeader')
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
          submodel_at(Prn::AgendaPrintType, 'inv:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:links] = links.to_h_with_attrs if has? 'inv:links'
          hash[:cancel_document] = cancel_document.to_h_with_attrs if has? 'inv:cancelDocument'
          hash[:invoice_header] = invoice_header.to_h_with_attrs if has? 'inv:invoiceHeader'
          hash[:invoice_detail] = invoice_detail.to_h_with_attrs if has? 'inv:invoiceDetail'
          hash[:invoice_summary] = invoice_summary.to_h_with_attrs if has? 'inv:invoiceSummary'
          hash[:eet] = eet.to_h_with_attrs if has? 'inv:EET'
          hash[:print] = print.to_h_with_attrs if has? 'inv:print'

          hash
        end
      end
    end
  end
end