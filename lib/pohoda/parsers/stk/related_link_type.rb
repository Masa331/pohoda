module Pohoda
  module Parsers
    module Stk
      class RelatedLinkType
        include ParserCore::BaseParser

        def address_url
          at 'stk:addressURL'
        end

        def description
          at 'stk:description'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:address_url] = address_url if has? 'stk:addressURL'
          hash[:description] = description if has? 'stk:description'

          hash
        end
      end
    end
  end
end