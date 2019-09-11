module Pohoda
  module Parsers
    module Ord
      class OrderSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'ord:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'ord:roundingDocument'
        end

        def rounding_vat
          at 'ord:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'ord:roundingVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'ord:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'ord:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'ord:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'ord:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'ord:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'ord:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'ord:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'ord:roundingVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'ord:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'ord:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'ord:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'ord:foreignCurrency'

          hash
        end
      end
    end
  end
end