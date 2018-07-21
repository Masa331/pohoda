module Pohoda
  module Builders
    module Bnk
      class TypeCurrencyHomeItem3
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('bnk:unitPrice', data[:unit_price], data[:unit_price_attributes]) if data.key? :unit_price

          root
        end
      end
    end
  end
end