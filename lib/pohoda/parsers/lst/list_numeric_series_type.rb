module Pohoda
  module Parsers
    module Lst
      class ListNumericSeriesType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_numeric_series
          submodel_at(Lst::ItemNumericSeriesType, 'lst:itemNumericSeries')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_numeric_series] = item_numeric_series.to_h if has? 'lst:itemNumericSeries'

          hash
          super.merge(hash)
        end
      end
    end
  end
end