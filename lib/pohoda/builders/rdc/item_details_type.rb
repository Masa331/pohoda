module Pohoda
  module Builders
    module Rdc
      class ItemDetailsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :item
            data[:item].each { |i| root << Rdc::ItemType.new('rdc:item', i).builder }
          end

          root
        end
      end
    end
  end
end