module Pohoda
  module Builders
    module Vyr
      class VyrobaItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('vyr:quantity', data[:quantity]) if data.key? :quantity
          if data.key? :stock_item
            root << Typ::StockItemType.new('stockItem', data[:stock_item]).builder
          end
          root << build_element('vyr:expirationDate', data[:expiration_date]) if data.key? :expiration_date
          root << build_element('vyr:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end