module Pohoda
  module Builders
    module Pri
      class PrijemkaSummaryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pri:roundingDocument', data[:rounding_document]) if data.key? :rounding_document
          root << build_element('pri:roundingVAT', data[:rounding_vat]) if data.key? :rounding_vat
          if data.key? :home_currency
            root << Typ::TypeCurrencyHome.new('pri:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeign.new('pri:foreignCurrency', data[:foreign_currency]).builder
          end

          root
        end
      end
    end
  end
end