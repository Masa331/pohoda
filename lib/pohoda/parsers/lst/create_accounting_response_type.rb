module Pohoda
  module Parsers
    module Lst
      class CreateAccountingResponseType < Lst::ItemAccountingTypeDoubleEntry
        include ParserCore::BaseParser
      end
    end
  end
end