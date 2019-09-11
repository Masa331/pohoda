module Pohoda
  module Parsers
    module Ofr
      class OfferSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'ofr:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'ofr:roundingDocument'
        end

        def rounding_vat
          at 'ofr:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'ofr:roundingVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'ofr:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'ofr:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'ofr:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'ofr:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'ofr:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'ofr:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'ofr:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'ofr:roundingVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'ofr:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'ofr:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'ofr:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'ofr:foreignCurrency'

          hash
        end
      end
    end
  end
end