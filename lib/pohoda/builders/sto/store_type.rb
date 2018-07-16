module Pohoda
  module Builders
    module Sto
      class StoreType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('sto:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('sto:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('sto:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :storekeeper
            root << Typ::RefType.new('sto:storekeeper', data[:storekeeper]).builder
          end
          if data.key? :plu
            root << Sto::PLUtype.new('sto:PLU', data[:plu]).builder
          end
          root << build_element('sto:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('sto:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          root << build_element('sto:sourceStore', data[:source_store], data[:source_store_attributes]) if data.key? :source_store
          root << build_element('sto:destinationStore', data[:destination_store], data[:destination_store_attributes]) if data.key? :destination_store
          root << build_element('sto:createInventoryCard', data[:create_inventory_card], data[:create_inventory_card_attributes]) if data.key? :create_inventory_card
          if data.key? :unit_pzd
            root << Typ::RefType.new('sto:unitPZD', data[:unit_pzd]).builder
          end
          if data.key? :acc_stock_a
            root << Sto::AccStockAType.new('sto:accStockA', data[:acc_stock_a]).builder
          end

          root
        end
      end
    end
  end
end