module Pohoda
  module Parsers
    module Lst
      class ListUserCodeType
        include ParserCore::BaseParser

        def item_user_code
          at 'lst:itemUserCode'
        end

        def item_user_code_attributes
          attributes_at 'lst:itemUserCode'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_user_code] = item_user_code if has? 'lst:itemUserCode'
          hash[:item_user_code_attributes] = item_user_code_attributes if has? 'lst:itemUserCode'

          hash
        end
      end
    end
  end
end