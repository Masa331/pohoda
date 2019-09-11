module Pohoda
  module Parsers
    module Int
      class IntDocSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'int:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'int:roundingDocument'
        end

        def rounding_vat
          at 'int:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'int:roundingVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'int:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'int:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'int:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'int:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'int:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'int:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'int:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'int:roundingVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'int:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'int:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'int:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'int:foreignCurrency'

          hash
        end
      end
    end
  end
end