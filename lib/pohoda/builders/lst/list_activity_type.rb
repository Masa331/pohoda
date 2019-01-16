module Pohoda
  module Builders
    module Lst
      class ListActivityType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          root << build_element('lst:itemActivity', data[:item_activity], data[:item_activity_attributes]) if data.key? :item_activity

          root
        end
      end
    end
  end
end