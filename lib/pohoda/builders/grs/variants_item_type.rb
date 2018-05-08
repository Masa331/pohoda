module Pohoda
  module Builders
    module Grs
      class VariantsItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :action_type
            root << Typ::ActionTypeItemAddDelete.new('grs:actionType', data[:action_type]).builder
          end
          if data.key? :stock_item
            root << Typ::StockItemType.new('grs:stockItem', data[:stock_item]).builder
          end
          root << build_element('grs:order', data[:order]) if data.key? :order
          root << build_element('grs:name', data[:name]) if data.key? :name
          root << build_element('grs:quantity', data[:quantity]) if data.key? :quantity

          root
        end
      end
    end
  end
end