module Pohoda
  module Builders
    module Bnk
      class TypeCurrencyHomeItem3
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('bnk:unitPrice', data[:unit_price], data[:unit_price_attributes]) if data.key? :unit_price

          root
        end
      end
    end
  end
end