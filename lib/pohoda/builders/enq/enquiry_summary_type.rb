module Pohoda
  module Builders
    module Enq
      class EnquirySummaryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('enq:roundingDocument', data[:rounding_document], data[:rounding_document_attributes]) if data.key? :rounding_document
          root << build_element('enq:roundingVAT', data[:rounding_vat], data[:rounding_vat_attributes]) if data.key? :rounding_vat
          if data.key? :home_currency
            root << Typ::TypeCurrencyHome.new('enq:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeign.new('enq:foreignCurrency', data[:foreign_currency]).builder
          end

          root
        end
      end
    end
  end
end