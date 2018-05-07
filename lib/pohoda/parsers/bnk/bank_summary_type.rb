module Pohoda
  module Parsers
    module Bnk
      class BankSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'bnk:roundingDocument'
        end

        def rounding_vat
          at 'bnk:roundingVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'bnk:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'bnk:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'bnk:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'bnk:roundingVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'bnk:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'bnk:foreignCurrency'

          hash
        end
      end
    end
  end
end