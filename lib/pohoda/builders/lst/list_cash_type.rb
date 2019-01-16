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

          root << build_element('lst:itemCash', data[:item_cash], data[:item_cash_attributes]) if data.key? :item_cash

          root
        end
      end
    end
  end
end