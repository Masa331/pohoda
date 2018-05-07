module Pohoda
  module Parsers
    module Enq
      class EnquirySummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'enq:roundingDocument'
        end

        def rounding_vat
          at 'enq:roundingVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'enq:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'enq:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'enq:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'enq:roundingVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'enq:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'enq:foreignCurrency'

          hash
        end
      end
    end
  end
end