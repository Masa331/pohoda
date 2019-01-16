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

          root << build_element('lst:itemCentre', data[:item_centre], data[:item_centre_attributes]) if data.key? :item_centre

          root
        end
      end
    end
  end
end