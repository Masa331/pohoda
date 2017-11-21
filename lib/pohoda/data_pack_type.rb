require "pohoda/base_element"
require "pohoda/data_pack_item_type"

module Pohoda
  class DataPackType
    include BaseElement

    def [](key)
      xml.attributes.each_with_object({}) do |(k, v), h|
        h[k] = v.value
      end[key]
    end

    def data_pack_items
      xml.xpath('dataPackItem').map do |raw|
        Pohoda::DataPackItemType.new(raw)
      end
    end

    def to_h
      { data_pack_items: data_pack_items.map(&:to_h) }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
