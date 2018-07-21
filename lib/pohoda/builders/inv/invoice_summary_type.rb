module Pohoda
  module Builders
    module Inv
      class InvoiceSummaryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('inv:roundingDocument', data[:rounding_document], data[:rounding_document_attributes]) if data.key? :rounding_document
          root << build_element('inv:roundingVAT', data[:rounding_vat], data[:rounding_vat_attributes]) if data.key? :rounding_vat
          root << build_element('inv:calculateVAT', data[:calculate_vat], data[:calculate_vat_attributes]) if data.key? :calculate_vat
          if data.key? :home_currency
            root << Typ::TypeCurrencyHome.new('inv:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeign.new('inv:foreignCurrency', data[:foreign_currency]).builder
          end

          root
        end
      end
    end
  end
end