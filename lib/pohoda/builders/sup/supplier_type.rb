module Pohoda
  module Builders
    module Sup
      class SupplierType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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