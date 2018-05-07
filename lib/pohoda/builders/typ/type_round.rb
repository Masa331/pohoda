module Pohoda
  module Builders
    module Typ
      class TypeRound
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:priceRound', data[:price_round]) if data.key? :price_round

          root
        end
      end
    end
  end
end