module Pohoda
  module Builders
    module Typ
      class TypeValidate
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:inStock', data[:in_stock], data[:in_stock_attributes]) if data.key? :in_stock

          root
        end
      end
    end
  end
end