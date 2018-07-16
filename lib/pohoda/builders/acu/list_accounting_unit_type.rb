module Pohoda
  module Builders
    module Acu
      class ListAccountingUnitType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_accounting_unit
            root << Acu::ItemAccountingUnitType.new('acu:itemAccountingUnit', data[:item_accounting_unit]).builder
          end

          root
        end
      end
    end
  end
end