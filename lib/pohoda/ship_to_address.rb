module Pohoda
  class ShipToAddress
    include BaseElement

    def id
      at :'typ:id'
    end

    def company
      at :'typ:company'
    end

    def division
      at :'typ:division'
    end

    def name
      at :'typ:name'
    end

    def city
      at :'typ:city'
    end

    def street
      at :'typ:street'
    end

    def zip
      at :'typ:zip'
    end

    def country
      element_xml = at :'typ:country'

      RefType.new(element_xml) if element_xml
    end

    def phone
      at :'typ:phone'
    end

    def email
      at :'typ:email'
    end

    def default_ship_address
      at :'typ:defaultShipAddress'
    end

    def to_h
      { id: id,
        company: company,
        division: division,
        name: name,
        city: city,
        street: street,
        zip: zip,
        country: country.to_h,
        phone: phone,
        email: email,
        default_ship_address: default_ship_address }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
