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

          root << build_element('lst:itemNumericSeries', data[:item_numeric_series], data[:item_numeric_series_attributes]) if data.key? :item_numeric_series

          root
        end
      end
    end
  end
end