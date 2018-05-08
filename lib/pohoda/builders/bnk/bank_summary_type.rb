module Pohoda
  module Builders
    module Bnk
      class BankSummaryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('bnk:roundingDocument', data[:rounding_document]) if data.key? :rounding_document
          root << build_element('bnk:roundingVAT', data[:rounding_vat]) if data.key? :rounding_vat
          if data.key? :home_currency
            root << Typ::TypeCurrencyHome.new('bnk:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeign.new('bnk:foreignCurrency', data[:foreign_currency]).builder
          end

          root
        end
      end
    end
  end
end