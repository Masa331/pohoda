module Pohoda
  module Builders
    module Stk
      class StockDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :stock_item
            data[:stock_item].each { |i| root << Stk::StockItemType.new('stk:stockItem', i).builder }
          end

          root
        end
      end
    end
  end
end