module Pohoda
  module Parsers
    module Str
      class StorageType
        include ParserCore::BaseParser

        def item_storage
          array_of_at(Str::ItemStorageType, ['str:itemStorage'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_storage] = item_storage.map(&:to_h) if has? 'str:itemStorage'

          hash
        end
      end
    end
  end
end