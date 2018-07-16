module Pohoda
  module Builders
    module Stk
      class AttachItemType
        include ParserCore::BaseBuilder
        include Stk::Groups::MyGroupStockItem

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('stk:warehouse', data[:warehouse], data[:warehouse_attributes]) if data.key? :warehouse
          root << build_element('stk:notExpedite', data[:not_expedite], data[:not_expedite_attributes]) if data.key? :not_expedite
          root << build_element('stk:edit', data[:edit], data[:edit_attributes]) if data.key? :edit
          if data.key? :stock_price_item
            element = Ox::Element.new('stk:stockPriceItem')
            data[:stock_price_item].each { |i| element << Typ::StockPriceType.new('stk:stockPrice', i).builder }
            root << element
          end

          mega.each do |r|
            r.nodes.each { |n| root << n }
          end

          root
        end
      end
    end
  end
end