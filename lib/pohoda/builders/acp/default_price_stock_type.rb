module Pohoda
  module Builders
    module Acp
      class DefaultPriceStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('acp:price', data[:price], data[:price_attributes]) if data.key? :price
          root << build_element('acp:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat
          if data.key? :foreign_currency
            root << Acp::TypeAcpCurrencyForeign.new('acp:foreignCurrency', data[:foreign_currency]).builder
          end

          root
        end
      end
    end
  end
end