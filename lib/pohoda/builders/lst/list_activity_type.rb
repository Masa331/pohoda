module Pohoda
  module Builders
    module Lst
      class ListActivityType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_activity
            root << Lst::ItemNameType.new('lst:itemActivity', data[:item_activity]).builder
          end

          root
        end
      end
    end
  end
end