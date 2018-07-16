module Pohoda
  module Builders
    module Lst
      class ListCashType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_cash
            root << Lst::ItemCashType.new('lst:itemCash', data[:item_cash]).builder
          end

          root
        end
      end
    end
  end
end