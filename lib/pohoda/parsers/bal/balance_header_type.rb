module Pohoda
  module Parsers
    module Bal
      class BalanceHeaderType
        include ParserCore::BaseParser

        def date_to
          at 'bal:dateTo'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:date_to] = date_to if has? 'bal:dateTo'

          hash
        end
      end
    end
  end
end