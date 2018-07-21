module Pohoda
  module Builders
    module Stk
      class StockPriceItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :stock_price
            data[:stock_price].each { |i| root << Typ::StockPriceType.new('stk:stockPrice', i).builder }
          end

          root
        end
      end
    end
  end
end