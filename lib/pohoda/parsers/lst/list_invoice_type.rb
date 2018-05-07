module Pohoda
  module Parsers
    module Lst
      class ListInvoiceType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def invoice
          array_of_at(Inv::InvoiceType, ['lst:invoice'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:invoice] = invoice.map(&:to_h_with_attrs) if has? 'lst:invoice'

          hash
          super.merge(hash)
        end
      end
    end
  end
end