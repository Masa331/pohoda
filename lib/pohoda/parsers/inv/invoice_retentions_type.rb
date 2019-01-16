module Pohoda
  module Parsers
    module Inv
      class InvoiceRetentionsType
        include ParserCore::BaseParser

        def invoice_retention
          array_of_at(Inv::InvoiceRetentionType, ['inv:invoiceRetention'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:invoice_retention] = invoice_retention.map(&:to_h) if has? 'inv:invoiceRetention'

          hash
        end
      end
    end
  end
end