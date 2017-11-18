module Pohoda
  class PartnerIdentity
    include BaseElement

    def id
      text_at 'id'
    end

    def ext_id
      element_xml = at_xpath 'extId'

      ExtIdType.new(element_xml) if element_xml
    end

    def address
      element_xml = at_xpath 'address'

      Address.new(element_xml) if element_xml
    end

    def ship_to_address
      element_xml = at_xpath 'shipToAddress'

      ShipToAddress.new(element_xml) if element_xml
    end

    def to_h
      { id: id,
        ext_id: ext_id.to_h,
        address: address.to_h,
        ship_to_address: ship_to_address.to_h }
    end
  end
end
