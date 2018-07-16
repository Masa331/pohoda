module Pohoda
  module Builders
    module Lst
      class ListOrderType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :order
            data[:order].each { |i| root << Ord::OrderType.new('lst:order', i).builder }
          end

          root
        end
      end
    end
  end
end