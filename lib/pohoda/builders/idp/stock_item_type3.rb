module Pohoda
  module Builders
    module Idp
      class StockItemType3
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('idp:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('idp:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          root << build_element('idp:name', data[:name], data[:name_attributes]) if data.key? :name
          if data.key? :storage
            root << Typ::RefTypeStorage.new('idp:storage', data[:storage]).builder
          end
          root << build_element('idp:price', data[:price], data[:price_attributes]) if data.key? :price
          root << build_element('idp:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          root << build_element('idp:individualPrice', data[:individual_price], data[:individual_price_attributes]) if data.key? :individual_price
          if data.key? :currency
            root << Typ::RefType.new('idp:currency', data[:currency]).builder
          end
          root << build_element('idp:payVAT', data[:pay_vat], data[:pay_vat_attributes]) if data.key? :pay_vat

          root
        end
      end
    end
  end
end