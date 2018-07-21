module Pohoda
  module Builders
    module Idp
      class StocksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :stock_item
            data[:stock_item].each { |i| root << Idp::StockItemType.new('idp:stockItem', i).builder }
          end

          root
        end
      end
    end
  end
end