module Pohoda
  module Parsers
    module Lst
      class ListNumericSeriesType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_numeric_series
          submodel_at(Lst::ItemNumericSeriesType, 'lst:itemNumericSeries')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_numeric_series] = item_numeric_series.to_h_with_attrs if has? 'lst:itemNumericSeries'

          hash
          super.merge(hash)
        end
      end
    end
  end
end