module Pohoda
  module Parsers
    module Str
      class ItemStorageType2
        include ParserCore::BaseParser

        def sub_storages
          at 'str:subStorages'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:sub_storages] = sub_storages if has? 'str:subStorages'

          hash
        end
      end
    end
  end
end