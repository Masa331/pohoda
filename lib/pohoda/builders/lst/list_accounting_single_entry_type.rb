module Pohoda
  module Builders
    module Lst
      class ListAccountingSingleEntryType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_accounting
            data[:item_accounting].each { |i| root << Lst::ItemAccountingTypeSingleEntry.new('lst:itemAccounting', i).builder }
          end

          root
        end
      end
    end
  end
end