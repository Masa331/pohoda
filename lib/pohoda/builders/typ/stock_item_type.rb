module Pohoda
  module Builders
    module Typ
      class StockItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :store
            root << Typ::RefType.new('store', data[:store]).builder
          end
          if data.key? :stock_item
            root << Typ::StockRefType.new('stockItem', data[:stock_item]).builder
          end
          root << build_element('typ:serialNumber', data[:serial_number]) if data.key? :serial_number

          root
        end
      end
    end
  end
end