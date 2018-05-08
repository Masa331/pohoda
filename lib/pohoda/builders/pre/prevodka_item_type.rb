module Pohoda
  module Builders
    module Pre
      class PrevodkaItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pre:quantity', data[:quantity]) if data.key? :quantity
          if data.key? :stock_item
            root << Typ::StockItemType.new('pre:stockItem', data[:stock_item]).builder
          end
          root << build_element('pre:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end