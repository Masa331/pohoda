module Pohoda
  module Parsers
    module Lst
      class ListStoreType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def store
          array_of_at(Sto::StoreType, ['lst:store'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:store] = store.map(&:to_h) if has? 'lst:store'

          hash
          super.merge(hash)
        end
      end
    end
  end
end