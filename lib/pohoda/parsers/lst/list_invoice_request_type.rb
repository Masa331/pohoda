module Pohoda
  module Parsers
    module Lst
      class ListInvoiceRequestType
        include ParserCore::BaseParser

        def request_invoice
          submodel_at(Ftr::RequestInvoiceType, 'lst:requestInvoice')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_invoice] = request_invoice.to_h_with_attrs if has? 'lst:requestInvoice'

          hash
        end
      end
    end
  end
end