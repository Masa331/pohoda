module Pohoda
  module Builders
    module Stk
      class AttachItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('stk:warehouse', data[:warehouse]) if data.key? :warehouse
          root << build_element('stk:notExpedite', data[:not_expedite]) if data.key? :not_expedite
          root << build_element('stk:edit', data[:edit]) if data.key? :edit
          if data.key? :stock_price_item
            root << Stk::StockPriceItemType.new('stockPriceItem', data[:stock_price_item]).builder
          end

          root
        end
      end
    end
  end
end