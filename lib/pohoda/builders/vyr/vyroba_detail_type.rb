module Pohoda
  module Builders
    module Vyr
      class VyrobaDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :vyroba_item
            data[:vyroba_item].each { |i| root << Vyr::VyrobaItemType.new('vyr:vyrobaItem', i).builder }
          end

          root
        end
      end
    end
  end
end