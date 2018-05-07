module Pohoda
  module Parsers
    module Nms
      class NumericalSeriesResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end