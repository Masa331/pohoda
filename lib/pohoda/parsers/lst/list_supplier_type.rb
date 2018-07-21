module Pohoda
  module Parsers
    module Lst
      class ListSupplierType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def supplier
          array_of_at(Sup::SupplierType, ['lst:supplier'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:supplier] = supplier.map(&:to_h) if has? 'lst:supplier'

          hash
          super.merge(hash)
        end
      end
    end
  end
end