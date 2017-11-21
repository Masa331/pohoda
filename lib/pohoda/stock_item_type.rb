require "pohoda/base_element"
require "pohoda/ref_type"
require "pohoda/stock_ref_type"

module Pohoda
  class StockItemType
    include BaseElement

    def store
      element_xml = at_xpath 'store'

      RefType.new element_xml if element_xml
    end

    def stock_item
      element_xml = at_xpath 'stockItem'

      StockRefType.new element_xml if element_xml
    end

    def serial_number
      text_at 'serialNumber'
    end

    def to_h
      { store: store.to_h,
        stock_item: stock_item.to_h,
        serial_number: serial_number }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
