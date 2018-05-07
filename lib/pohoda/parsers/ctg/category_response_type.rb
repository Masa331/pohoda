module Pohoda
  module Parsers
    module Ctg
      class CategoryResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end