module Pohoda
  module Parsers
    module Vch
      class VoucherSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'vch:roundingDocument'
        end

        def rounding_vat
          at 'vch:roundingVAT'
        end

        def calculate_vat
          at 'vch:calculateVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'vch:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'vch:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'vch:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'vch:roundingVAT'
          hash[:calculate_vat] = calculate_vat if has? 'vch:calculateVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'vch:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'vch:foreignCurrency'

          hash
        end
      end
    end
  end
end