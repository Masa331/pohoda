module Pohoda
  class StockItemType
    include BaseElement

    def store
      RefType.new e 'typ:store'
    end

    def stock_item
      StockRefType.new e 'typ:stockItem'
    end

    def serial_number
      t 'typ:serialNumber'
    end

    def to_h
      { store: store.to_h,
        stock_item: stock_item.to_h,
        serial_number: serial_number }
    end
  end
end
