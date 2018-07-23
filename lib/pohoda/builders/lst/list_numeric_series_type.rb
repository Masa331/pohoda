module Pohoda
  module Builders
    module Lst
      class ListNumericSeriesType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_numeric_series
            root << Lst::ItemNumericSeriesType.new('lst:itemNumericSeries', data[:item_numeric_series]).builder
          end

          root
        end
      end
    end
  end
end