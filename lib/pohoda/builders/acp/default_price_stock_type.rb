module Pohoda
  module Builders
    module Acp
      class DefaultPriceStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('acp:price', data[:price]) if data.key? :price
          root << build_element('acp:payVAT', data[:pay_vat]) if data.key? :pay_vat
          if data.key? :foreign_currency
            root << Acp::TypeAcpCurrencyForeign.new('foreignCurrency', data[:foreign_currency]).builder
          end

          root
        end
      end
    end
  end
end