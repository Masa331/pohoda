module Pohoda
  module Parsers
    module Str
      class ItemStorageType2
        include ParserCore::BaseParser

        def sub_storages
          at 'str:subStorages'
        end

        def sub_storages_attributes
          attributes_at 'str:subStorages'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:sub_storages] = sub_storages if has? 'str:subStorages'
          hash[:sub_storages_attributes] = sub_storages_attributes if has? 'str:subStorages'

          hash
        end
      end
    end
  end
end