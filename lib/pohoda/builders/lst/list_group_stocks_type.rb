module Pohoda
  module Builders
    module Lst
      class ListGroupStocksType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :group_stocks
            data[:group_stocks].each { |i| root << Gr::GroupStocksType.new('lst:groupStocks', i).builder }
          end

          root
        end
      end
    end
  end
end