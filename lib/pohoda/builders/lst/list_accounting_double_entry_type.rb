module Pohoda
  module Builders
    module Lst
      class ListAccountingDoubleEntryType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_accounting
            data[:item_accounting].each { |i| root << Lst::ItemAccountingTypeDoubleEntry.new('lst:itemAccounting', i).builder }
          end

          root
        end
      end
    end
  end
end