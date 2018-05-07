module Pohoda
  module Parsers
    module Str
      class StorageResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end