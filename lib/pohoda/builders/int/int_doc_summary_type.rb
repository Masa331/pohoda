module Pohoda
  module Builders
    module Int
      class IntDocSummaryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('int:roundingDocument', data[:rounding_document], data[:rounding_document_attributes]) if data.key? :rounding_document
          root << build_element('int:roundingVAT', data[:rounding_vat], data[:rounding_vat_attributes]) if data.key? :rounding_vat
          root << build_element('int:typeCalculateVATInclusivePrice', data[:type_calculate_vat_inclusive_price], data[:type_calculate_vat_inclusive_price_attributes]) if data.key? :type_calculate_vat_inclusive_price
          if data.key? :home_currency
            root << Typ::TypeCurrencyHome.new('int:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeign.new('int:foreignCurrency', data[:foreign_currency]).builder
          end

          root
        end
      end
    end
  end
end