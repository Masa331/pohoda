module Pohoda
  module Builders
    module Lst
      class ListOrderType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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