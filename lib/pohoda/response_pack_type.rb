require "pohoda/base_element"
require "pohoda/response_pack_item_type"

module Pohoda
  class ResponsePackType
    include BaseElement

    def response_pack_item
      element_xml = at :'rsp:responsePackItem'

      Pohoda::ResponsePackItemType.new(element_xml) if element_xml
    end

    def to_h
      { response_pack_item: response_pack_item.to_h }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
