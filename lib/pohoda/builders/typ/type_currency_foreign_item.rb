module Pohoda
  module Builders
    module Typ
      class TypeCurrencyForeignItem
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:unitPrice', data[:unit_price], data[:unit_price_attributes]) if data.key? :unit_price
          root << build_element('typ:price', data[:price], data[:price_attributes]) if data.key? :price
          root << build_element('typ:priceVAT', data[:price_vat], data[:price_vat_attributes]) if data.key? :price_vat
          root << build_element('typ:priceSum', data[:price_sum], data[:price_sum_attributes]) if data.key? :price_sum

          root
        end
      end
    end
  end
end