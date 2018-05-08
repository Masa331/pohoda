module Pohoda
  module Parsers
    module Lst
      class ItemStorageType
        include ParserCore::BaseParser

        def sub_storages
          array_of_at(Lst::ItemStorageType, ['lst:subStorages', 'lst:itemStorage'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:sub_storages] = sub_storages.map(&:to_h_with_attrs) if has? 'lst:subStorages'

          hash
        end
      end
    end
  end
end