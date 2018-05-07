module Pohoda
  module Parsers
    module Ord
      class OrderSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'ord:roundingDocument'
        end

        def rounding_vat
          at 'ord:roundingVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'ord:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'ord:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'ord:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'ord:roundingVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'ord:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'ord:foreignCurrency'

          hash
        end
      end
    end
  end
end