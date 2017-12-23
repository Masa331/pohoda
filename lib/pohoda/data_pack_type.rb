require 'pohoda/base_element'
require 'pohoda/data_pack_item_type'

module Pohoda
  class DataPackType
    include BaseElement

    def data_pack_items
      elements = all(:'dat:dataPackItem')

      elements.map do |raw|
        Pohoda::DataPackItemType.new(raw)
      end
    end

    def to_h
      { data_pack_items: data_pack_items.map(&:to_h) }
    end
  end
end
