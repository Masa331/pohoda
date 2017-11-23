require "pohoda/base_element"
require "pohoda/ext_id_type"
require "pohoda/address"
require "pohoda/ship_to_address"

module Pohoda
  class PartnerIdentity
    include BaseElement

    def id
      at :'typ:id'
    end

    def ext_id
      element_xml = at :'typ:extId'

      ExtIdType.new(element_xml) if element_xml
    end

    def address
      element_xml = at :'typ:address'

      Address.new(element_xml) if element_xml
    end

    def ship_to_address
      element_xml = at :'typ:shipToAddress'

      ShipToAddress.new(element_xml) if element_xml
    end

    def to_h
      { id: id,
        ext_id: ext_id.to_h,
        address: address.to_h,
        ship_to_address: ship_to_address.to_h }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
