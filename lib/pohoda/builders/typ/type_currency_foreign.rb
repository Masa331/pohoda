module Pohoda
  module Builders
    module Typ
      class TypeCurrencyForeign
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :currency
            root << Typ::RefType.new('typ:currency', data[:currency]).builder
          end
          root << build_element('typ:rate', data[:rate]) if data.key? :rate
          root << build_element('typ:amount', data[:amount]) if data.key? :amount
          root << build_element('typ:priceSum', data[:price_sum]) if data.key? :price_sum

          root
        end
      end
    end
  end
end