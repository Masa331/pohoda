module Pohoda
  module Parsers
    module Pro
      class ProdejkaSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'pro:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'pro:roundingDocument'
        end

        def rounding_vat
          at 'pro:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'pro:roundingVAT'
        end

        def calculate_vat
          at 'pro:calculateVAT'
        end

        def calculate_vat_attributes
          attributes_at 'pro:calculateVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'pro:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'pro:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'pro:homeCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'pro:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'pro:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'pro:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'pro:roundingVAT'
          hash[:calculate_vat] = calculate_vat if has? 'pro:calculateVAT'
          hash[:calculate_vat_attributes] = calculate_vat_attributes if has? 'pro:calculateVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'pro:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'pro:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'pro:homeCurrency'

          hash
        end
      end
    end
  end
end