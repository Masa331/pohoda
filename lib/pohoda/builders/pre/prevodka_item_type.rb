module Pohoda
  module Builders
    module Pre
      class PrevodkaItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('pre:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          if data.key? :stock_item
            root << Typ::StockItemType.new('pre:stockItem', data[:stock_item]).builder
          end
          root << build_element('pre:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end