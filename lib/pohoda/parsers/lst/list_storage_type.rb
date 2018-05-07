module Pohoda
  module Parsers
    module Lst
      class ListStorageType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_storage
          array_of_at(Lst::ItemStorageType, ['lst:itemStorage'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_storage] = item_storage.map(&:to_h_with_attrs) if has? 'lst:itemStorage'

          hash
          super.merge(hash)
        end
      end
    end
  end
end