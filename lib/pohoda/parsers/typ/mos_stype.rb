module Pohoda
  module Parsers
    module Typ
      class MOSStype
        include ParserCore::BaseParser

        def ids
          at 'typ:ids'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:ids] = ids if has? 'typ:ids'

          hash
        end
      end
    end
  end
end