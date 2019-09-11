module Pohoda
  module Builders
    module Typ
      class TypeCurrencyForeign
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :currency
            root << Typ::RefType.new('typ:currency', data[:currency]).builder
          end
          root << build_element('typ:rate', data[:rate], data[:rate_attributes]) if data.key? :rate
          root << build_element('typ:amount', data[:amount], data[:amount_attributes]) if data.key? :amount
          root << build_element('typ:priceSum', data[:price_sum], data[:price_sum_attributes]) if data.key? :price_sum
          if data.key? :round
            root << Typ::TypeRound.new('typ:round', data[:round]).builder
          end

          root
        end
      end
    end
  end
end