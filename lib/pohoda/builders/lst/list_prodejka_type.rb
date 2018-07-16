module Pohoda
  module Builders
    module Lst
      class ListProdejkaType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :prodejka
            data[:prodejka].each { |i| root << Pro::ProdejkaType.new('lst:prodejka', i).builder }
          end

          root
        end
      end
    end
  end
end