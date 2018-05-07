module Pohoda
  module Builders
    module Acu
      class ListAccountingUnitType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :item_accounting_unit
            root << Acu::ItemAccountingUnitType.new('itemAccountingUnit', data[:item_accounting_unit]).builder
          end

          root
        end
      end
    end
  end
end