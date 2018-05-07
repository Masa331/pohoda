module Pohoda
  module Parsers
    module Typ
      class SourceDocumentType
        include ParserCore::BaseParser

        def id
          at 'typ:id'
        end

        def number
          at 'typ:number'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'typ:id'
          hash[:number] = number if has? 'typ:number'

          hash
        end
      end
    end
  end
end