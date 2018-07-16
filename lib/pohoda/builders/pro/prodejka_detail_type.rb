module Pohoda
  module Builders
    module Pro
      class ProdejkaDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :prodejka_item
            data[:prodejka_item].each { |i| root << Pro::ProdejkaItemType.new('pro:prodejkaItem', i).builder }
          end

          root
        end
      end
    end
  end
end