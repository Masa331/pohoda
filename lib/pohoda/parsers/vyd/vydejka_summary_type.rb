module Pohoda
  module Parsers
    module Vyd
      class VydejkaSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'vyd:roundingDocument'
        end

        def rounding_vat
          at 'vyd:roundingVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'vyd:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'vyd:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'vyd:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'vyd:roundingVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'vyd:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'vyd:foreignCurrency'

          hash
        end
      end
    end
  end
end