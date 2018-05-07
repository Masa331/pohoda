module Pohoda
  module Parsers
    module Lst
      class ListUserCodeType
        include ParserCore::BaseParser

        def item_user_code
          submodel_at(Lst::ItemUserCodeType, 'lst:itemUserCode')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_user_code] = item_user_code.to_h_with_attrs if has? 'lst:itemUserCode'

          hash
        end
      end
    end
  end
end