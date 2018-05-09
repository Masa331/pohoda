module Pohoda
  module Builders
    module Stk
      class RelatedStocksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :id_stocks
            data[:id_stocks].each { |i| root << Typ::OrderStockItemType.new('stk:idStocks', i).builder }
          end

          root
        end
      end
    end
  end
end