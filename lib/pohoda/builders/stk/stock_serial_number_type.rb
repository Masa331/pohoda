module Pohoda
  module Builders
    module Stk
      class StockSerialNumberType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :serial_number_item
            data[:serial_number_item].each { |i| root << Stk::SerialNumberItemType.new('stk:serialNumberItem', i).builder }
          end

          root
        end
      end
    end
  end
end