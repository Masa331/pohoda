module Pohoda
  module Builders
    module Vyr
      class VyrobaDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :vyroba_item
            data[:vyroba_item].each { |i| root << Vyr::VyrobaItemType.new('vyr:vyrobaItem', i).builder }
          end

          root
        end
      end
    end
  end
end