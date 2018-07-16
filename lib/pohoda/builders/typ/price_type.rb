module Pohoda
  module Builders
    module Typ
      class PriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:price', data[:price], data[:price_attributes]) if data.key? :price
          root << build_element('typ:priceVAT', data[:price_vat], data[:price_vat_attributes]) if data.key? :price_vat

          root
        end
      end
    end
  end
end