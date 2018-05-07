module Pohoda
  module Parsers
    module Typ
      class RefType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def ids
          at 'typ:ids'
        end

        def value_type
          at 'typ:valueType'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:ids] = ids if has? 'typ:ids'
          hash[:value_type] = value_type if has? 'typ:valueType'

          hash
        end
      end
    end
  end
end