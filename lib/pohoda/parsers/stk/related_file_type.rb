module Pohoda
  module Parsers
    module Stk
      class RelatedFileType
        include ParserCore::BaseParser

        def filepath
          at 'stk:filepath'
        end

        def filepath_attributes
          attributes_at 'stk:filepath'
        end

        def description
          at 'stk:description'
        end

        def description_attributes
          attributes_at 'stk:description'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:filepath] = filepath if has? 'stk:filepath'
          hash[:filepath_attributes] = filepath_attributes if has? 'stk:filepath'
          hash[:description] = description if has? 'stk:description'
          hash[:description_attributes] = description_attributes if has? 'stk:description'

          hash
        end
      end
    end
  end
end