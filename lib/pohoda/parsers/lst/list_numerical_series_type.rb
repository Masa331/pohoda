module Pohoda
  module Parsers
    module Lst
      class ListNumericalSeriesType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def numerical_series
          array_of_at(Nm::NumericalSeriesType, ['lst:numericalSeries'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:numerical_series] = numerical_series.map(&:to_h) if has? 'lst:numericalSeries'

          hash
          super.merge(hash)
        end
      end
    end
  end
end