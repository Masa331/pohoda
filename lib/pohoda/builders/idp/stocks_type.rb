module Pohoda
  module Builders
    module Idp
      class StocksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :stock_item
            data[:stock_item].each { |i| root << Idp::StockItemType.new('idp:stockItem', i).builder }
          end

          root
        end
      end
    end
  end
end