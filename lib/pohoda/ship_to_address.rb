module Pohoda
  class ShipToAddress
    include BaseElement

    def id
      text_at 'typ:id'
    end

    def company
      text_at 'typ:company'
    end

    def division
      text_at 'typ:division'
    end

    def name
      text_at 'typ:name'
    end

    def city
      text_at 'typ:city'
    end

    def street
      text_at 'typ:street'
    end

    def zip
      text_at 'typ:zip'
    end

    def country
      element_xml = at_xpath 'typ:country'

      RefType.new(element_xml) if element_xml
    end

    def phone
      text_at 'typ:phone'
    end

    def email
      text_at 'typ:email'
    end

    def default_ship_address
      text_at 'typ:defaultShipAddress'
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
        default_ship_address: default_ship_address }
    end
  end
end
