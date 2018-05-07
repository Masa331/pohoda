module Pohoda
  module Builders
    module Ord
      class OrderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ord:actionType', data[:action_type]) if data.key? :action_type
          if data.key? :order_header
            root << Ord::OrderHeaderType.new('orderHeader', data[:order_header]).builder
          end
          if data.key? :order_detail
            root << Ord::OrderDetailType.new('orderDetail', data[:order_detail]).builder
          end
          if data.key? :order_summary
            root << Ord::OrderSummaryType.new('orderSummary', data[:order_summary]).builder
          end
          if data.key? :print
            root << Prn::AgendaPrintType.new('print', data[:print]).builder
          end

          root
        end
      end
    end
  end
end