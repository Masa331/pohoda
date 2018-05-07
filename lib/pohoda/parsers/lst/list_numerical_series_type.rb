module Pohoda
  module Parsers
    module Lst
      class ListNumericalSeriesType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def numerical_series
          array_of_at(Nm::NumericalSeriesType, ['lst:numericalSeries'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:numerical_series] = numerical_series.map(&:to_h_with_attrs) if has? 'lst:numericalSeries'

          hash
          super.merge(hash)
        end
      end
    end
  end
end