module Pohoda
  module Builders
    module Acp
      class ActionPriceStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('acp:price', data[:price], data[:price_attributes]) if data.key? :price
          root << build_element('acp:discountPercentage', data[:discount_percentage], data[:discount_percentage_attributes]) if data.key? :discount_percentage
          root << build_element('acp:fixedPrice', data[:fixed_price], data[:fixed_price_attributes]) if data.key? :fixed_price

          root
        end
      end
    end
  end
end