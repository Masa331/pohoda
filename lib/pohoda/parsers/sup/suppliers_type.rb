module Pohoda
  module Parsers
    module Sup
      class SuppliersType
        include ParserCore::BaseParser

        def supplier_item
          array_of_at(SupplierItemType, ['sup:supplierItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:supplier_item] = supplier_item.map(&:to_h) if has? 'sup:supplierItem'

          hash
        end
      end
    end
  end
end