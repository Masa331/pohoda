module Pohoda
  module Builders
    module Typ
      class TypeValidate
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:inStock', data[:in_stock], data[:in_stock_attributes]) if data.key? :in_stock

          root
        end
      end
    end
  end
end