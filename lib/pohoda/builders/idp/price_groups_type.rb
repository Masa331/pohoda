module Pohoda
  module Builders
    module Idp
      class PriceGroupsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :price_group_item
            data[:price_group_item].each { |i| root << Idp::PriceGroupItemType.new('idp:priceGroupItem', i).builder }
          end

          root
        end
      end
    end
  end
end