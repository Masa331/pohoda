module Pohoda
  module Parsers
    module Typ
      class LinksType
        include ParserCore::BaseParser

        def link
          array_of_at(Typ::LinkElemetType, ['typ:link'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:link] = link.map(&:to_h_with_attrs) if has? 'typ:link'

          hash
        end
      end
    end
  end
end