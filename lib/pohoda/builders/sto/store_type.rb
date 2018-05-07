module Pohoda
  module Builders
    module Sto
      class StoreType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('sto:id', data[:id]) if data.key? :id
          root << build_element('sto:name', data[:name]) if data.key? :name
          root << build_element('sto:text', data[:text]) if data.key? :text
          if data.key? :storekeeper
            root << Typ::RefType.new('storekeeper', data[:storekeeper]).builder
          end
          if data.key? :plu
            root << Sto::PLUtype.new('PLU', data[:plu]).builder
          end
          root << build_element('sto:note', data[:note]) if data.key? :note
          root << build_element('sto:markRecord', data[:mark_record]) if data.key? :mark_record
          root << build_element('sto:sourceStore', data[:source_store]) if data.key? :source_store
          root << build_element('sto:destinationStore', data[:destination_store]) if data.key? :destination_store
          root << build_element('sto:createInventoryCard', data[:create_inventory_card]) if data.key? :create_inventory_card
          if data.key? :unit_pzd
            root << Typ::RefType.new('unitPZD', data[:unit_pzd]).builder
          end
          if data.key? :acc_stock_a
            root << Sto::AccStockAType.new('accStockA', data[:acc_stock_a]).builder
          end

          root
        end
      end
    end
  end
end