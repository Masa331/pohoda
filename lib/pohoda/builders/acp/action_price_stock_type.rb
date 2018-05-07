module Pohoda
  module Builders
    module Acp
      class ActionPriceStockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('acp:price', data[:price]) if data.key? :price
          root << build_element('acp:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          root << build_element('acp:fixedPrice', data[:fixed_price]) if data.key? :fixed_price

          root
        end
      end
    end
  end
end