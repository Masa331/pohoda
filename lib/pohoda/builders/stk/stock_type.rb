module Pohoda
  module Builders
    module Stk
      class StockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :action_type
            root << Stk::ActionTypeType.new('stk:actionType', data[:action_type]).builder
          end
          if data.key? :stock_header
            root << Stk::StockHeaderType.new('stk:stockHeader', data[:stock_header]).builder
          end
          if data.key? :stock_detail
            element = Ox::Element.new('stk:stockDetail')
            data[:stock_detail].each { |i| element << Stk::StockItemType.new('stk:stockItem', i).builder }
            root << element
          end
          if data.key? :stock_attach
            element = Ox::Element.new('stk:stockAttach')
            data[:stock_attach].each { |i| element << Stk::AttachItemType.new('stk:attachItem', i).builder }
            root << element
          end
          if data.key? :stock_serial_number
            element = Ox::Element.new('stk:stockSerialNumber')
            data[:stock_serial_number].each { |i| element << Stk::SerialNumberItemType.new('stk:serialNumberItem', i).builder }
            root << element
          end
          if data.key? :stock_price_item
            element = Ox::Element.new('stk:stockPriceItem')
            data[:stock_price_item].each { |i| element << Typ::StockPriceType.new('stk:stockPrice', i).builder }
            root << element
          end
          if data.key? :print
            element = Ox::Element.new('stk:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end