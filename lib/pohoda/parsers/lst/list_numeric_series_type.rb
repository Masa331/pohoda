module Pohoda
  module Parsers
    module Lst
      class ListNumericSeriesType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_numeric_series
          at 'lst:itemNumericSeries'
        end

        def item_numeric_series_attributes
          attributes_at 'lst:itemNumericSeries'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_numeric_series] = item_numeric_series if has? 'lst:itemNumericSeries'
          hash[:item_numeric_series_attributes] = item_numeric_series_attributes if has? 'lst:itemNumericSeries'

          hash
          super.merge(hash)
        end
      end
    end
  end
end