module Pohoda
  class StockItemType
    include BaseElement

    def store
      element_xml = at_xpath 'typ:store'

      RefType.new element_xml if element_xml
    end

    def stock_item
      element_xml = at_xpath 'typ:stockItem'

      StockRefType.new element_xml if element_xml
    end

    def serial_number
      text_at 'typ:serialNumber'
    end

    def to_h
      { store: store.to_h,
        stock_item: stock_item.to_h,
        serial_number: serial_number }
    end
  end
end
