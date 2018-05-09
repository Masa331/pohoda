module Pohoda
  module Builders
    module LStk
      class ListStockType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :stock
            data[:stock].each { |i| root << Stk::StockType.new('lStk:stock', i).builder }
          end

          root
        end
      end
    end
  end
end