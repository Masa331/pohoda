module Pohoda
  module Builders
    module Sup
      class SuppliersType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :supplier_item
            data[:supplier_item].each { |i| root << SupplierItemType.new('sup:supplierItem', i).builder }
          end

          root
        end
      end
    end
  end
end