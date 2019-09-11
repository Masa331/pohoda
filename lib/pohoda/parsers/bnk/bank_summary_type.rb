module Pohoda
  module Parsers
    module Bnk
      class BankSummaryType
        include ParserCore::BaseParser

        def rounding_document
          at 'bnk:roundingDocument'
        end

        def rounding_document_attributes
          attributes_at 'bnk:roundingDocument'
        end

        def rounding_vat
          at 'bnk:roundingVAT'
        end

        def rounding_vat_attributes
          attributes_at 'bnk:roundingVAT'
        end

        def type_calculate_vat_inclusive_price
          at 'bnk:typeCalculateVATInclusivePrice'
        end

        def type_calculate_vat_inclusive_price_attributes
          attributes_at 'bnk:typeCalculateVATInclusivePrice'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHome, 'bnk:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeign, 'bnk:foreignCurrency')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:rounding_document] = rounding_document if has? 'bnk:roundingDocument'
          hash[:rounding_document_attributes] = rounding_document_attributes if has? 'bnk:roundingDocument'
          hash[:rounding_vat] = rounding_vat if has? 'bnk:roundingVAT'
          hash[:rounding_vat_attributes] = rounding_vat_attributes if has? 'bnk:roundingVAT'
          hash[:type_calculate_vat_inclusive_price] = type_calculate_vat_inclusive_price if has? 'bnk:typeCalculateVATInclusivePrice'
          hash[:type_calculate_vat_inclusive_price_attributes] = type_calculate_vat_inclusive_price_attributes if has? 'bnk:typeCalculateVATInclusivePrice'
          hash[:home_currency] = home_currency.to_h if has? 'bnk:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h if has? 'bnk:foreignCurrency'

          hash
        end
      end
    end
  end
end