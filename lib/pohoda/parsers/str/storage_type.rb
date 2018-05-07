module Pohoda
  module Parsers
    module Str
      class StorageType
        include ParserCore::BaseParser

        def item_storage
          array_of_at(Str::ItemStorageType, ['str:itemStorage'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_storage] = item_storage.map(&:to_h_with_attrs) if has? 'str:itemStorage'

          hash
        end
      end
    end
  end
end