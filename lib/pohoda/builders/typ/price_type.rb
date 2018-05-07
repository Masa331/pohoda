module Pohoda
  module Builders
    module Typ
      class PriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:price', data[:price]) if data.key? :price
          root << build_element('typ:priceVAT', data[:price_vat]) if data.key? :price_vat

          root
        end
      end
    end
  end
end