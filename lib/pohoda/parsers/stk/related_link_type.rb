module Pohoda
  module Parsers
    module Stk
      class RelatedLinkType
        include ParserCore::BaseParser

        def address_url
          at 'stk:addressURL'
        end

        def address_url_attributes
          attributes_at 'stk:addressURL'
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

          hash[:address_url] = address_url if has? 'stk:addressURL'
          hash[:address_url_attributes] = address_url_attributes if has? 'stk:addressURL'
          hash[:description] = description if has? 'stk:description'
          hash[:description_attributes] = description_attributes if has? 'stk:description'

          hash
        end
      end
    end
  end
end