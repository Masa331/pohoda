module Pohoda
  module Builders
    module Lst
      class ListNumericSeriesType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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