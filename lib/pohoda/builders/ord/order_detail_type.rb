module Pohoda
  module Builders
    module Ord
      class OrderDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :order_item
            data[:order_item].each { |i| root << Ord::OrderItemType.new('ord:orderItem', i).builder }
          end

          root
        end
      end
    end
  end
end