module Pohoda
  module Builders
    module Sup
      class SuppliersType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :supplier_item
            data[:supplier_item].each { |i| root << SupplierItemType.new('sup:supplierItem', i).builder }
          end

          root
        end
      end
    end
  end
end