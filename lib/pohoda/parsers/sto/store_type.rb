module Pohoda
  module Parsers
    module Sto
      class StoreType
        include ParserCore::BaseParser

        def id
          at 'sto:id'
        end

        def name
          at 'sto:name'
        end

        def text
          at 'sto:text'
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

        def mark_record
          at 'sto:markRecord'
        end

        def source_store
          at 'sto:sourceStore'
        end

        def destination_store
          at 'sto:destinationStore'
        end

        def create_inventory_card
          at 'sto:createInventoryCard'
        end

        def unit_pzd
          submodel_at(Typ::RefType, 'sto:unitPZD')
        end

        def acc_stock_a
          submodel_at(Sto::AccStockAType, 'sto:accStockA')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'sto:id'
          hash[:name] = name if has? 'sto:name'
          hash[:text] = text if has? 'sto:text'
          hash[:storekeeper] = storekeeper.to_h_with_attrs if has? 'sto:storekeeper'
          hash[:plu] = plu.to_h_with_attrs if has? 'sto:PLU'
          hash[:note] = note if has? 'sto:note'
          hash[:mark_record] = mark_record if has? 'sto:markRecord'
          hash[:source_store] = source_store if has? 'sto:sourceStore'
          hash[:destination_store] = destination_store if has? 'sto:destinationStore'
          hash[:create_inventory_card] = create_inventory_card if has? 'sto:createInventoryCard'
          hash[:unit_pzd] = unit_pzd.to_h_with_attrs if has? 'sto:unitPZD'
          hash[:acc_stock_a] = acc_stock_a.to_h_with_attrs if has? 'sto:accStockA'

          hash
        end
      end
    end
  end
end