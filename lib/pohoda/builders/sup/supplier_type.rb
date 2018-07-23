module Pohoda
  module Builders
    module Sup
      class SupplierType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :stock_item
            root << Typ::StockItemType.new('sup:stockItem', data[:stock_item]).builder
          end
          root << build_element('sup:suppliers', data[:suppliers], data[:suppliers_attributes]) if data.key? :suppliers

          root
        end
      end
    end
  end
end