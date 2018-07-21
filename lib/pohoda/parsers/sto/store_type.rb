module Pohoda
  module Parsers
    module Sto
      class StoreType
        include ParserCore::BaseParser

        def id
          at 'sto:id'
        end

        def id_attributes
          attributes_at 'sto:id'
        end

        def name
          at 'sto:name'
        end

        def name_attributes
          attributes_at 'sto:name'
        end

        def text
          at 'sto:text'
        end

        def text_attributes
          attributes_at 'sto:text'
        end

        def storekeeper
          submodel_at(Typ::RefType, 'sto:storekeeper')
        end

        def plu
          submodel_at(Sto::PLUtype, 'sto:PLU')
        end

        def note
          at 'sto:note'
        end

        def note_attributes
          attributes_at 'sto:note'
        end

        def mark_record
          at 'sto:markRecord'
        end

        def mark_record_attributes
          attributes_at 'sto:markRecord'
        end

        def source_store
          at 'sto:sourceStore'
        end

        def source_store_attributes
          attributes_at 'sto:sourceStore'
        end

        def destination_store
          at 'sto:destinationStore'
        end

        def destination_store_attributes
          attributes_at 'sto:destinationStore'
        end

        def create_inventory_card
          at 'sto:createInventoryCard'
        end

        def create_inventory_card_attributes
          attributes_at 'sto:createInventoryCard'
        end

        def unit_pzd
          submodel_at(Typ::RefType, 'sto:unitPZD')
        end

        def acc_stock_a
          submodel_at(Sto::AccStockAType, 'sto:accStockA')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'sto:id'
          hash[:id_attributes] = id_attributes if has? 'sto:id'
          hash[:name] = name if has? 'sto:name'
          hash[:name_attributes] = name_attributes if has? 'sto:name'
          hash[:text] = text if has? 'sto:text'
          hash[:text_attributes] = text_attributes if has? 'sto:text'
          hash[:storekeeper] = storekeeper.to_h if has? 'sto:storekeeper'
          hash[:plu] = plu.to_h if has? 'sto:PLU'
          hash[:note] = note if has? 'sto:note'
          hash[:note_attributes] = note_attributes if has? 'sto:note'
          hash[:mark_record] = mark_record if has? 'sto:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'sto:markRecord'
          hash[:source_store] = source_store if has? 'sto:sourceStore'
          hash[:source_store_attributes] = source_store_attributes if has? 'sto:sourceStore'
          hash[:destination_store] = destination_store if has? 'sto:destinationStore'
          hash[:destination_store_attributes] = destination_store_attributes if has? 'sto:destinationStore'
          hash[:create_inventory_card] = create_inventory_card if has? 'sto:createInventoryCard'
          hash[:create_inventory_card_attributes] = create_inventory_card_attributes if has? 'sto:createInventoryCard'
          hash[:unit_pzd] = unit_pzd.to_h if has? 'sto:unitPZD'
          hash[:acc_stock_a] = acc_stock_a.to_h if has? 'sto:accStockA'

          hash
        end
      end
    end
  end
end