module Pohoda
  module Builders
    module Idp
      class PriceGroupsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :price_group_item
            data[:price_group_item].each { |i| root << Idp::PriceGroupItemType.new('idp:priceGroupItem', i).builder }
          end

          root
        end
      end
    end
  end
end