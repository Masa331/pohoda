module Pohoda
  class PartnerIdentity
    include BaseElement

    def id
      t 'typ:id'
    end

    def external_reference
      ExternalReference.new(e 'typ:extId')
    end

    def address
      Address.new(e 'typ:address')
    end

    def ship_to_address
      ShippingToAddress.new(e 'typ:shipToAddress')
    end

    def to_h
      { id: id,
        external_reference: external_reference.to_h,
        address: address.to_h,
        ship_to_address: ship_to_address.to_h }
    end
  end
end
