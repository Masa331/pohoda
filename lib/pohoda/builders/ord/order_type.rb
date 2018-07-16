module Pohoda
  module Builders
    module Ord
      class OrderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ord:actionType', data[:action_type], data[:action_type_attributes]) if data.key? :action_type
          if data.key? :order_header
            root << Ord::OrderHeaderType.new('ord:orderHeader', data[:order_header]).builder
          end
          if data.key? :order_detail
            element = Ox::Element.new('ord:orderDetail')
            data[:order_detail].each { |i| element << Ord::OrderItemType.new('ord:orderItem', i).builder }
            root << element
          end
          if data.key? :order_summary
            root << Ord::OrderSummaryType.new('ord:orderSummary', data[:order_summary]).builder
          end
          if data.key? :print
            element = Ox::Element.new('ord:print')
            data[:print].each { |i| element << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end