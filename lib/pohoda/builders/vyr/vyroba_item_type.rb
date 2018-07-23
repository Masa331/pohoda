module Pohoda
  module Builders
    module Vyr
      class VyrobaItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('vyr:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
          if data.key? :stock_item
            root << Typ::StockItemType.new('vyr:stockItem', data[:stock_item]).builder
          end
          root << build_element('vyr:expirationDate', data[:expiration_date], data[:expiration_date_attributes]) if data.key? :expiration_date
          root << build_element('vyr:note', data[:note], data[:note_attributes]) if data.key? :note

          root
        end
      end
    end
  end
end