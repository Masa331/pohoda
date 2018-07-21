module Pohoda
  module Parsers
    module Str
      class SubStoragesType2
        include ParserCore::BaseParser

        def item_storage
          at 'str:itemStorage'
        end

        def item_storage_attributes
          attributes_at 'str:itemStorage'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_storage] = item_storage if has? 'str:itemStorage'
          hash[:item_storage_attributes] = item_storage_attributes if has? 'str:itemStorage'

          hash
        end
      end
    end
  end
end