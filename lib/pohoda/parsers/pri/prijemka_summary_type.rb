module Pohoda
  module Parsers
    module Pri
      class PrijemkaSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'pri:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'pri:roundingDocument'
        end

        def rounding_vat
          at 'pri:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'pri:roundingVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'pri:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'pri:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'pri:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'pri:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'pri:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'pri:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'pri:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'pri:roundingVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'pri:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'pri:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'pri:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'pri:foreignCurrency'

          hash
        end
      end
    end
  end
end