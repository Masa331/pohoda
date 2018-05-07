module Pohoda
  module Parsers
    module Str
      class SubStoragesType2
        include ParserCore::BaseParser

        def item_storage
          at 'str:itemStorage'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_storage] = item_storage if has? 'str:itemStorage'

          hash
        end
      end
    end
  end
end