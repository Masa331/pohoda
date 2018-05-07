module Pohoda
  module Parsers
    module Enq
      class EnquiryResponseType < Rdc::DocumentResponseType
        include ParserCore::BaseParser
      end
    end
  end
end