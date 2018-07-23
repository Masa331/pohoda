module Pohoda
  module Builders
    module Stk
      class StockDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :stock_item
            data[:stock_item].each { |i| root << Stk::StockItemType.new('stk:stockItem', i).builder }
          end

          root
        end
      end
    end
  end
end