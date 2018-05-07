module Pohoda
  module Parsers
    module Ofr
      class OfferSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'ofr:roundingDocument'
        end

        def rounding_vat
          at 'ofr:roundingVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'ofr:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'ofr:foreignCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'ofr:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'ofr:roundingVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'ofr:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'ofr:foreignCurrency'

          hash
        end
      end
    end
  end
end