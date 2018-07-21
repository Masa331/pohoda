module Pohoda
  module Builders
    module Typ
      class TypeRound
        include ParserCore::BaseBuilder
        include Typ::Groups::MyGroupOfRound

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:priceRound', data[:price_round], data[:price_round_attributes]) if data.key? :price_round

          mega.each do |r|
            r.nodes.each { |n| root << n }
          end

          root
        end
      end
    end
  end
end