require "pohoda/base_element"
require "pohoda/response_pack_item_type"

module Pohoda
  class ResponsePackType
    include BaseElement

    def [](key)
      xml.attributes.each_with_object({}) do |(k, v), h|
        h[k] = v.value
      end[key]
    end

    def response_pack_item
      element_xml = at_xpath 'responsePackItem'

      Pohoda::ResponsePackItemType.new(element_xml) if element_xml
    end

    def to_h
      { response_pack_item: response_pack_item.to_h }
    end
  end
end
