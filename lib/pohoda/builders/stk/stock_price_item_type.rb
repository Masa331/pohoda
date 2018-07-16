module Pohoda
  module Builders
    module Stk
      class StockPriceItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :stock_price
            data[:stock_price].each { |i| root << Typ::StockPriceType.new('stk:stockPrice', i).builder }
          end

          root
        end
      end
    end
  end
end