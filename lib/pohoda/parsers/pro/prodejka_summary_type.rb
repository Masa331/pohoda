module Pohoda
  module Parsers
    module Pro
      class ProdejkaSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'pro:roundingDocument'
        end

        def rounding_vat
          at 'pro:roundingVAT'
        end

        def calculate_vat
          at 'pro:calculateVAT'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'pro:homeCurrency')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:rounding_document] = rounding_document if has? 'pro:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'pro:roundingVAT'
          hash[:calculate_vat] = calculate_vat if has? 'pro:calculateVAT'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'pro:homeCurrency'

          hash
        end
      end
    end
  end
end