module Pohoda
  module Builders
    module Stk
      class StockType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :action_type
            root << Stk::ActionTypeType.new('actionType', data[:action_type]).builder
          end
          if data.key? :stock_header
            root << Stk::StockHeaderType.new('stockHeader', data[:stock_header]).builder
          end
          if data.key? :stock_detail
            root << Stk::StockDetailType.new('stockDetail', data[:stock_detail]).builder
          end
          if data.key? :stock_attach
            root << Stk::StockAttachType.new('stockAttach', data[:stock_attach]).builder
          end
          if data.key? :stock_serial_number
            root << Stk::StockSerialNumberType.new('stockSerialNumber', data[:stock_serial_number]).builder
          end
          if data.key? :stock_price_item
            root << Stk::StockPriceItemType.new('stockPriceItem', data[:stock_price_item]).builder
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