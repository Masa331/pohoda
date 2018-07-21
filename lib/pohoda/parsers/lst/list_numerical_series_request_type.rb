module Pohoda
  module Parsers
    module Lst
      class ListNumericalSeriesRequestType
        include ParserCore::BaseParser

        def request_numerical_series
          submodel_at(Ftr::RequestNumericalSeriesType, 'lst:requestNumericalSeries')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_numerical_series] = request_numerical_series.to_h if has? 'lst:requestNumericalSeries'

          hash
        end
      end
    end
  end
end