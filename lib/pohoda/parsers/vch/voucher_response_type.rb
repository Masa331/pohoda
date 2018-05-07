module Pohoda
  module Parsers
    module Vch
      class VoucherResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end