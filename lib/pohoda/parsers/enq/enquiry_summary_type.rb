module Pohoda
  module Parsers
    module Enq
      class EnquirySummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'enq:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'enq:roundingDocument'
        end

        def rounding_vat
          at 'enq:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'enq:roundingVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'enq:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'enq:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'enq:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'enq:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'enq:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'enq:roundingVAT'
          hash[:home_currency] = home_currency.to_h if has? 'enq:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'enq:foreignCurrency'

          hash
        end
      end
    end
  end
end