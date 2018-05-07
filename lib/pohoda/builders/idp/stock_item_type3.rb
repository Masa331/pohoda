module Pohoda
  module Builders
    module Idp
      class StockItemType3
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('idp:id', data[:id]) if data.key? :id
          root << build_element('idp:ids', data[:ids]) if data.key? :ids
          root << build_element('idp:name', data[:name]) if data.key? :name
          if data.key? :storage
            root << Typ::RefTypeStorage.new('idp:storage', data[:storage]).builder
          end
          root << build_element('idp:price', data[:price]) if data.key? :price
          root << build_element('idp:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          root << build_element('idp:individualPrice', data[:individual_price]) if data.key? :individual_price
          if data.key? :currency
            root << Typ::RefType.new('idp:currency', data[:currency]).builder
          end
          root << build_element('idp:payVAT', data[:pay_vat]) if data.key? :pay_vat

          root
        end
      end
    end
  end
end