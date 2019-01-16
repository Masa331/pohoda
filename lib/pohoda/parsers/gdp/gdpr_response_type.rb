module Pohoda
  module Parsers
    module Gdp
      class GDPRResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end