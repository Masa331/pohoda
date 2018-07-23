module Pohoda
  module Builders
    module Lst
      class ListCentreType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_centre
            root << Lst::ItemNameType.new('lst:itemCentre', data[:item_centre]).builder
          end

          root
        end
      end
    end
  end
end