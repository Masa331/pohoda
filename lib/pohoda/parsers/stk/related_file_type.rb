module Pohoda
  module Parsers
    module Stk
      class RelatedFileType
        include ParserCore::BaseParser

        def filepath
          at 'stk:filepath'
        end

        def description
          at 'stk:description'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:filepath] = filepath if has? 'stk:filepath'
          hash[:description] = description if has? 'stk:description'

          hash
        end
      end
    end
  end
end