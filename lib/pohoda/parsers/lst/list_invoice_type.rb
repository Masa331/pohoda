module Pohoda
  module Parsers
    module Lst
      class ListInvoiceType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def invoice
          array_of_at(Inv::InvoiceType, ['lst:invoice'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:invoice] = invoice.map(&:to_h) if has? 'lst:invoice'

          hash
          super.merge(hash)
        end
      end
    end
  end
end