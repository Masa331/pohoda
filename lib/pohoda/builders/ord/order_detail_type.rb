module Pohoda
  module Builders
    module Ord
      class OrderDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :order_item
            data[:order_item].each { |i| root << Ord::OrderItemType.new('ord:orderItem', i).builder }
          end

          root
        end
      end
    end
  end
end