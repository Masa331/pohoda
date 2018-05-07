module Pohoda
  module Parsers
    module Ftr
      class FilterIDType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ftr:id'

          hash
        end
      end
    end
  end
end