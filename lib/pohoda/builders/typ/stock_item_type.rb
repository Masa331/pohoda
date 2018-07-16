module Pohoda
  module Builders
    module Typ
      class StockItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :store
            root << Typ::RefType.new('typ:store', data[:store]).builder
          end
          if data.key? :stock_item
            root << Typ::StockRefType.new('typ:stockItem', data[:stock_item]).builder
          end
          root << build_element('typ:serialNumber', data[:serial_number], data[:serial_number_attributes]) if data.key? :serial_number

          root
        end
      end
    end
  end
end