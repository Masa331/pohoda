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

            root << build_element('stk:id', data[:id], data[:id_attributes]) if data.key? :id
            if data.key? :storage
              root << Typ::RefTypeStorage.new('stk:storage', data[:storage]).builder
            end
            root << build_element('stk:code', data[:code], data[:code_attributes]) if data.key? :code
            root << build_element('stk:name', data[:name], data[:name_attributes]) if data.key? :name
            root << build_element('stk:count', data[:count], data[:count_attributes]) if data.key? :count
            root << build_element('stk:quantity', data[:quantity], data[:quantity_attributes]) if data.key? :quantity
            root << build_element('stk:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
            root << build_element('stk:stockOrder', data[:stock_order], data[:stock_order_attributes]) if data.key? :stock_order

            root
          end
        end
      end
    end
  end
end