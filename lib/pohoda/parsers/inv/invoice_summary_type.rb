module Pohoda
  module Parsers
    module Inv
      class InvoiceSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'inv:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'inv:roundingDocument'
        end

        def rounding_vat
          at 'inv:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'inv:roundingVAT'
        end

        def calculate_vat
          at 'inv:calculateVAT'
        end

        def calculate_vat_attributes
          attributes_at 'inv:calculateVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'inv:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'inv:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'inv:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'inv:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'inv:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'inv:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'inv:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'inv:roundingVAT'
          hash[:calculate_vat] = calculate_vat if has? 'inv:calculateVAT'
          hash[:calculate_vat_attributes] = calculate_vat_attributes if has? 'inv:calculateVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'inv:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'inv:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'inv:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'inv:foreignCurrency'

          hash
        end
      end
    end
  end
end