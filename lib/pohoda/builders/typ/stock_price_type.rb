module Pohoda
  module Builders
    module Typ
      class StockPriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('typ:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          root << build_element('typ:price', data[:price], data[:price_attributes]) if data.key? :price

          root
        end
      end
    end
  end
end