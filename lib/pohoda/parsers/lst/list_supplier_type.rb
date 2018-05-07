module Pohoda
  module Parsers
    module Lst
      class ListSupplierType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def supplier
          array_of_at(Sup::SupplierType, ['lst:supplier'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:supplier] = supplier.map(&:to_h_with_attrs) if has? 'lst:supplier'

          hash
          super.merge(hash)
        end
      end
    end
  end
end