module Pohoda
  module Parsers
    module Int
      class IntDocSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'int:roundingDocument'
        end

        def rounding_vat
          at 'int:roundingVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'int:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'int:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'int:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'int:roundingVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'int:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'int:foreignCurrency'

          hash
        end
      end
    end
  end
end