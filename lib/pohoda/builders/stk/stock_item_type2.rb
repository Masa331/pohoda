module Pohoda
  module Builders
    module Stk
      class StockItemType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :stock_price_item
            root << Stk::StockPriceItemType.new('stockPriceItem', data[:stock_price_item]).builder
          end

          root
        end
      end
    end
  end
end