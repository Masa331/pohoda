module Pohoda
  module Parsers
    module Pri
      class PrijemkaSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'pri:roundingDocument'
        end

        def rounding_vat
          at 'pri:roundingVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'pri:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'pri:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'pri:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'pri:roundingVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'pri:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'pri:foreignCurrency'

          hash
        end
      end
    end
  end
end