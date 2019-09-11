module Pohoda
  module Parsers
    module Vch
      class VoucherSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'vch:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'vch:roundingDocument'
        end

        def rounding_vat
          at 'vch:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'vch:roundingVAT'
        end

        def calculate_vat
          at 'vch:calculateVAT'
        end

        def calculate_vat_attributes
          attributes_at 'vch:calculateVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'vch:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'vch:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'vch:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'vch:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'vch:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'vch:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'vch:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'vch:roundingVAT'
          hash[:calculate_vat] = calculate_vat if has? 'vch:calculateVAT'
          hash[:calculate_vat_attributes] = calculate_vat_attributes if has? 'vch:calculateVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'vch:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'vch:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'vch:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'vch:foreignCurrency'

          hash
        end
      end
    end
  end
end