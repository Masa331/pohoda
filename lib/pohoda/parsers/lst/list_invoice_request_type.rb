module Pohoda
  module Parsers
    module Lst
      class ListInvoiceRequestType
        include ParserCore::BaseParser

        def request_invoice
          submodel_at(Ftr::RequestInvoiceType, 'lst:requestInvoice')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_invoice] = request_invoice.to_h if has? 'lst:requestInvoice'

          hash
        end
      end
    end
  end
end