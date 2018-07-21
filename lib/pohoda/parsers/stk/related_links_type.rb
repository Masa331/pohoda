module Pohoda
  module Parsers
    module Stk
      class RelatedLinksType
        include ParserCore::BaseParser

        def related_link
          array_of_at(Stk::RelatedLinkType, ['stk:relatedLink'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:related_link] = related_link.map(&:to_h) if has? 'stk:relatedLink'

          hash
        end
      end
    end
  end
end