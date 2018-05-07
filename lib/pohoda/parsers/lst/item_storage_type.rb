module Pohoda
  module Parsers
    module Lst
      class ItemStorageType
        include ParserCore::BaseParser

        def sub_storages
          submodel_at(Lst::SubStoragesType, 'lst:subStorages')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:sub_storages] = sub_storages.to_h_with_attrs if has? 'lst:subStorages'

          hash
        end
      end
    end
  end
end