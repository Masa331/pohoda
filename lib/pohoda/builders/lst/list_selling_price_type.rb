module Pohoda
  module Builders
    module Lst
      class ListSellingPriceType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_selling_price
            data[:item_selling_price].each { |i| root << Lst::ItemSellingPriceType.new('lst:itemSellingPrice', i).builder }
          end

          root
        end
      end
    end
  end
end