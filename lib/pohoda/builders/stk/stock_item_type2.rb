module Pohoda
  module Builders
    module Stk
      class StockItemType2
        include ParserCore::BaseBuilder
        include Stk::Groups::MyGroupStockItem

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :stock_price_item
            element = Ox::Element.new('stk:stockPriceItem')
            data[:stock_price_item].each { |i| element << Typ::StockPriceType.new('stk:stockPrice', i).builder }
            root << element
          end

          mega.each do |r|
            r.nodes.each { |n| root << n }
          end

          root
        end
      end
    end
  end
end