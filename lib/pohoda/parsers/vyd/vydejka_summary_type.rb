module Pohoda
  module Parsers
    module Vyd
      class VydejkaSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'vyd:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'vyd:roundingDocument'
        end

        def rounding_vat
          at 'vyd:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'vyd:roundingVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'vyd:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'vyd:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'vyd:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'vyd:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'vyd:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'vyd:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'vyd:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'vyd:roundingVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'vyd:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'vyd:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'vyd:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'vyd:foreignCurrency'

          hash
        end
      end
    end
  end
end