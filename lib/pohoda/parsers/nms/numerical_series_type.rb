module Pohoda
  module Parsers
    module Nms
      class NumericalSeriesType
        include ParserCore::BaseParser

        def numerical_series_header
          submodel_at(Nms::NumericalSeriesHeaderType, 'nms:numericalSeriesHeader')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:numerical_series_header] = numerical_series_header.to_h if has? 'nms:numericalSeriesHeader'

          hash
        end
      end
    end
  end
end