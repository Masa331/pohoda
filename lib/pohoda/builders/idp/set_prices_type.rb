module Pohoda
  module Builders
    module Idp
      class SetPricesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :stocks
            element = Ox::Element.new('idp:stocks')
            data[:stocks].each { |i| element << Idp::StockItemType.new('idp:stockItem', i).builder }
            root << element
          end
          if data.key? :price_groups
            element = Ox::Element.new('idp:priceGroups')
            data[:price_groups].each { |i| element << Idp::PriceGroupItemType.new('idp:priceGroupItem', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end