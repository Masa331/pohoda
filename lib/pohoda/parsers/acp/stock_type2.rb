module Pohoda
  module Parsers
    module Acp
      class StockType2
        include ParserCore::BaseParser

        def id
          at 'acp:id'
        end

        def code
          at 'acp:code'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'acp:id'
          hash[:code] = code if has? 'acp:code'

          hash
        end
      end
    end
  end
end