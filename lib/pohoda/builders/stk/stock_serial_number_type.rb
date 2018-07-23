module Pohoda
  module Builders
    module Stk
      class StockSerialNumberType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :serial_number_item
            data[:serial_number_item].each { |i| root << Stk::SerialNumberItemType.new('stk:serialNumberItem', i).builder }
          end

          root
        end
      end
    end
  end
end