module Pohoda
  module Builders
    module Stk
      module Groups
        module MyGroupStockItem
          def builder
            root = Ox::Element.new(name)
            if data.respond_to? :attributes
              data.attributes.each { |k, v| root[k] = v }
            end

            root << build_element('stk:id', data[:id]) if data.key? :id
            if data.key? :storage
              root << Typ::RefTypeStorage.new('storage', data[:storage]).builder
            end
            root << build_element('stk:code', data[:code]) if data.key? :code
            root << build_element('stk:name', data[:name]) if data.key? :name
            root << build_element('stk:count', data[:count]) if data.key? :count
            root << build_element('stk:quantity', data[:quantity]) if data.key? :quantity
            root << build_element('stk:unit', data[:unit]) if data.key? :unit
            root << build_element('stk:stockOrder', data[:stock_order]) if data.key? :stock_order

            root
          end
        end
      end
    end
  end
end