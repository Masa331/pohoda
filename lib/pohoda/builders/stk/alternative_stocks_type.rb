module Pohoda
  module Builders
    module Stk
      class AlternativeStocksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :id_stocks
            data[:id_stocks].each { |i| root << Typ::OrderStockItemType.new('stk:idStocks', i).builder }
          end

          root
        end
      end
    end
  end
end