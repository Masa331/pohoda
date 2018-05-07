module Pohoda
  module Parsers
    module Sup
      class SuppliersType
        include ParserCore::BaseParser

        def supplier_item
          array_of_at(SupplierItemType, ['sup:supplierItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:supplier_item] = supplier_item.map(&:to_h_with_attrs) if has? 'sup:supplierItem'

          hash
        end
      end
    end
  end
end