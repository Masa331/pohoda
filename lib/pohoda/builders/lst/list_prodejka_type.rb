module Pohoda
  module Builders
    module Lst
      class ListProdejkaType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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