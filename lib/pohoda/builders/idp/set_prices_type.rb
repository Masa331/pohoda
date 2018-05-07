module Pohoda
  module Builders
    module Idp
      class SetPricesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :stocks
            root << Idp::StocksType.new('stocks', data[:stocks]).builder
          end
          if data.key? :price_groups
            root << Idp::PriceGroupsType.new('priceGroups', data[:price_groups]).builder
          end

          root
        end
      end
    end
  end
end